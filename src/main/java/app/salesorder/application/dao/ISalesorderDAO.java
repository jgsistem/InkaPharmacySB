package app.salesorder.application.dao;

import java.util.Date;
import java.util.List;

import app.pucharseorderdetall.application.dto.PurchaseorderdetallListDto;
import app.salesorder.domain.entity.Salesorder;
import app.salesorderdetall.domain.entity.Saleorderdetall;

public interface ISalesorderDAO {
	
    public int saveSaveorder(Salesorder salesorder);
    public void saveSaveorderd(List<Saleorderdetall> saleorderdetall,int result);	
	public List<Salesorder> getallSaveorder(int offset, int limit,String DateFrom, String DateTo);
	
}
