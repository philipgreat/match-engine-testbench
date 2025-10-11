package com.philipgreat.mcme.util.upload;

public class UploadRequest {

    private String baseURL="https://voe.drplt.com/vfs-api";
    private String fullKey;

    public String getBaseURL() {
        return baseURL;
    }

    public void setBaseURL(String baseURL) {
        this.baseURL = baseURL;
    }

    public String getFullKey() {
        return fullKey;
    }

    public void setFullKey(String fullKey) {
        this.fullKey = fullKey;
    }

    private String fileName;
    private String content;

    public UploadRequest() {}

    public UploadRequest(String fileName, String content) {
        this.fileName = fileName;
        this.content = content;
    }

    public String getFileName() { return fileName; }
    public void setFileName(String fileName) { this.fileName = fileName; }
    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
}
