package com.philipgreat.mcme.util.upload;

import com.fasterxml.jackson.databind.ObjectMapper;
import okhttp3.*;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.UUID;

import cn.hutool.log.StaticLog;

public class JsonToMultipartUploader {



    private static final OkHttpClient client = new OkHttpClient();
    private static final ObjectMapper mapper = new ObjectMapper();


    public static String generateFileName(String originalName) {
        String ext = "jpg"; // 默认扩展名

        if (originalName != null && originalName.contains(".")) {
            int lastDot = originalName.lastIndexOf(".");
            if (lastDot < originalName.length() - 1) {
                ext = originalName.substring(lastDot + 1);
            }
        }
        String datePrefix = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        String uuid = UUID.randomUUID().toString();
        return "voe/"+datePrefix+"/"+uuid + "." + ext;
    }



    /**
     * 接收 UploadRequest 对象，解码 Base64 并以 multipart/form-data 上传
     */
    public static UploadResponse upload(UploadRequest requestObj) throws IOException {


        if(requestObj.getFileName()==null || requestObj.getFileName().length()==0){
            throw new IllegalArgumentException("upload操作必须提供fullkey");
        }
        if(requestObj.getContent()==null || requestObj.getContent().length()==0){
            throw new IllegalArgumentException("upload操作必须提供content");
        }

        String fullKey=generateFileName(requestObj.getFileName());
        requestObj.setFullKey(fullKey);
        return uploadInternal(requestObj);
    }

    public static UploadResponse delete(UploadRequest requestObj) throws IOException {
        //fullKey会提供
        if(requestObj.getFullKey()==null || requestObj.getFullKey().length()==0){
            throw new IllegalArgumentException("删除操作必须提供fullkey");
        }

        requestObj.setContent(Base64.getEncoder().encodeToString("----delete----".getBytes()));
        return uploadInternal(requestObj);
    }


    public static UploadResponse uploadInternal( UploadRequest requestObj) throws IOException {
        String url=requestObj.getBaseURL()+"/put/"+requestObj.getFullKey();
        // 1. Base64 解码
        byte[] fileBytes = Base64.getDecoder().decode(requestObj.getContent());

        // 2. 构造 multipart/form-data
        RequestBody fileBody = RequestBody.create(
                fileBytes,
                MediaType.parse("application/octet-stream")
        );

        MultipartBody multipartBody = new MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart("file", requestObj.getFileName(), fileBody)
                .build();

        Request request = new Request.Builder()
                .url(url)
                .put(multipartBody)
                .build();


        // 3. 执行请求
        try (Response response = client.newCall(request).execute()) {
            String respBody = response.body() != null ? response.body().string() : "";
            if (!response.isSuccessful()) {
                StaticLog.info("上传失败 {} ",respBody);
                throw new IOException("上传失败，返回代码: " + response.code());
            }


            return mapper.readValue(respBody, UploadResponse.class);
        }
    }

    // 示例
    public static void main(String[] args) {
        try {
            // 模拟一个输入对象
            UploadRequest input = new UploadRequest(
                    "x.txt",
                    "SGVsbG8gV29ybGQK"
            );
            input.setBaseURL("https://voe.drplt.com/vfs-api");
            input.setFullKey("voe/t000001/x.txt");

            UploadResponse resp = upload(
                    input
            );

            System.out.println("上传结果: " + resp.getMessage());
            if (resp.getData() != null) {
                System.out.println("访问地址: " + resp.getData().getViewUri());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
