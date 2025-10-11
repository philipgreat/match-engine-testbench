package com.philipgreat.mcme.util.upload;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class UploadResponse {
    private int code;
    private String message;
    private Data data;

    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Data {
        private String fileName;
        private String viewUri;
        private String filePath;
        private String host;
        private String message;

        // getter & setter
        public String getFileName() { return fileName; }
        public void setFileName(String fileName) { this.fileName = fileName; }
        public String getViewUri() { return viewUri; }
        public void setViewUri(String viewUri) { this.viewUri = viewUri; }
        public String getFilePath() { return filePath; }
        public void setFilePath(String filePath) { this.filePath = filePath; }
        public String getHost() { return host; }
        public void setHost(String host) { this.host = host; }
        public String getMessage() { return message; }
        public void setMessage(String message) { this.message = message; }
    }

    // getter & setter
    public int getCode() { return code; }
    public void setCode(int code) { this.code = code; }
    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
    public Data getData() { return data; }
    public void setData(Data data) { this.data = data; }
}