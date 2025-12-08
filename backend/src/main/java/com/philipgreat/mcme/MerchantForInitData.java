package com.philipgreat.mcme;

import com.doublechaintech.supplierrelationservice.Q;
import com.doublechaintech.supplierrelationservice.account.Account;
import com.doublechaintech.supplierrelationservice.merchant.Merchant;
import com.doublechaintech.supplierrelationservice.merchant.MerchantRequest;

class TestDataCreationInputParam{

    private long startIndex;
    private long count;
    private long currentIndex;

    public long getCurrentIndex() {
        return currentIndex;
    }

    public void setCurrentIndex(long currentIndex) {
        this.currentIndex = currentIndex;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public long getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(long startIndex) {
        this.startIndex = startIndex;
    }
}
public class MerchantForInitData extends Merchant {

    public MerchantRequest prepareRequestForInitData(){
        return Q.merchants()
                .returnType(MerchantForInitData.class)
                .selectCurrencyTypeList(Q.currencyTypesWithMinimalFields()
                        .offset(0,30));

    }

    public void fillTestData(long startIndex, long count){
        TestDataCreationInputParam inputParam=new TestDataCreationInputParam();
        inputParam.setStartIndex(startIndex);
        inputParam.setCount(count);
        for(long i=0;i<inputParam.getCount();i++){
            inputParam.setCurrentIndex(startIndex+i);
            createAccountForAccountList(inputParam);
            createApiKeyForApiList(inputParam);
        }

    }

    protected void createApiKeyForApiList(TestDataCreationInputParam inputParam) {

    }

    protected void createAccountForAccountList(TestDataCreationInputParam param) {

    }


}
