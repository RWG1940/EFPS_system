package com.rs.exception.pojo;

/**
 * @FileName: BizException
 * @Date: 2024/8/7:16:07
 * @Description: 自定义异常类
 * @Author: RWG
 */
public class BizException extends RuntimeException{

        private static final long serialVersionUID = 1L;


        protected String errorCode;

        protected String errorMsg;

        public BizException() {
            super();
        }

        public BizException(BaseErrorInfoInterface errorInfoInterface) {
            super(errorInfoInterface.getResultCode());
            this.errorCode = errorInfoInterface.getResultCode();
            this.errorMsg = errorInfoInterface.getResultMsg();
        }

        public BizException(BaseErrorInfoInterface errorInfoInterface, Throwable cause) {
            super(errorInfoInterface.getResultCode(), cause);
            this.errorCode = errorInfoInterface.getResultCode();
            this.errorMsg = errorInfoInterface.getResultMsg();
        }

        public BizException(String errorMsg) {
            super(errorMsg);
            this.errorMsg = errorMsg;
        }

        public BizException(String errorCode, String errorMsg) {
            super(errorCode);
            this.errorCode = errorCode;
            this.errorMsg = errorMsg;
        }

        public BizException(String errorCode, String errorMsg, Throwable cause) {
            super(errorCode, cause);
            this.errorCode = errorCode;
            this.errorMsg = errorMsg;
        }


        public String getErrorCode() {
            return errorCode;
        }

        public void setErrorCode(String errorCode) {
            this.errorCode = errorCode;
        }

        public String getErrorMsg() {
            return errorMsg;
        }

        public void setErrorMsg(String errorMsg) {
            this.errorMsg = errorMsg;
        }

        @Override
        public Throwable fillInStackTrace() {
            return this;
        }
    }


