package app.salesorder.application.service;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Date;
import javax.transaction.Transactional;

import org.modelmapper.TypeToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import app.pucharseorderdetall.application.dto.PurchaseorderdetallListDto;
import app.salesorder.application.assembler.SalesorderCreateAssembler;
import app.salesorder.application.dao.SalesorderDAO;
import app.salesorder.application.dto.SalesorderCreateDto;
import app.salesorder.application.dto.SalesorderListDto;
import app.salesorder.domain.entity.Salesorder;
import app.salesorder.infrastructure.persistence.hibernate.SalesorderHibernateRepository;
import app.salesorderdetall.application.dao.SalesorderdetallDAO;
import app.salesorderdetall.application.dto.SalesorderdetallListDto;
import app.salesorderdetall.application.service.SalesorderdetallService;
import app.salesorderdetall.domain.entity.Saleorderdetall;


@Service
public class SalesorderService {

	@Autowired
	SalesorderCreateAssembler salesorderCreateAssembler;

	@Autowired
	SalesorderDAO salesorderDAO;

	@Autowired
	SalesorderdetallDAO salesorderdetallDAO;

	@Autowired
	SalesorderdetallService salesorderdetallService;

	@Transactional
	public ResponseEntity<Object> salesordercreate(SalesorderCreateDto salesorderCreateDto) throws Exception {

		Salesorder salesorder = new Salesorder();
		salesorder.setSale_date(obtenerFechaActual());
		salesorder.setCustomer_id(salesorderCreateDto.getCustomer_id());
		salesorder.setEmployee_id(salesorderCreateDto.getEmployee_id());
		salesorder.setStatus(salesorderCreateDto.getStatus());	
		
		List<Saleorderdetall> saleorderdetall = new ArrayList<>();
		//Iterator<PurchaseorderdetallListDto> itServicio = salesorderCreateDto.getPurchaseorderdetallListDto().iterator();
		//Iterator<Saleorderdetall> itServicio = salesorderCreateDto.getSaleorderdetall().iterator();
		
		for (Saleorderdetall purchaseorderdetallListDtou : salesorderCreateDto.getSalesorderdetall()) {
			//Saleorderdetall purchaseorderdetallListDtou = itServicio.next();
			Saleorderdetall purchaseorderdetallListDtoTem = new Saleorderdetall();			
			purchaseorderdetallListDtoTem.setSale_order_id(purchaseorderdetallListDtou.getSale_order_id());
			purchaseorderdetallListDtoTem.setProduct_id(purchaseorderdetallListDtou.getProduct_id());
			purchaseorderdetallListDtoTem.setQuantity(purchaseorderdetallListDtou.getQuantity());
			purchaseorderdetallListDtoTem.setPrice(purchaseorderdetallListDtou.getPrice());
			purchaseorderdetallListDtoTem.setCurrency(purchaseorderdetallListDtou.getCurrency());
			purchaseorderdetallListDtoTem.setStatus(purchaseorderdetallListDtou.getStatus());			
			saleorderdetall.add(purchaseorderdetallListDtoTem);		
		}	
		
		salesorder.setSalesorderdetall(saleorderdetall);		
		int intOrder = salesorderDAO.saveSaveorder(salesorder);		
		salesorderDAO.saveSaveorderd(saleorderdetall,intOrder);		
		return ResponseEntity.ok().body("ok");		
	}

	@Transactional
	public List<SalesorderListDto> getAllOrderSales(int page, int size, String DateFrom, String DateTo)
			throws SQLException {
		List<Salesorder> listado = salesorderDAO.getallSaveorder(page, size, DateFrom, DateTo);
		List<Salesorder> salesorderListDto2 = new ArrayList<Salesorder>();
		for (Salesorder p : listado) {
			Salesorder salesorderListDto1 = new Salesorder();
			salesorderListDto1.setId(p.getId());
			salesorderListDto1.setSale_date(p.getSale_date());			
			salesorderListDto1.setCustomer_id(p.getCustomer_id());
			salesorderListDto1.setEmployee_id(p.getEmployee_id());
			salesorderListDto1.setStatus(p.getStatus());
			List<SalesorderdetallListDto> listado2 = salesorderdetallService.getIdSales(salesorderListDto1.getId());
			
			List<Saleorderdetall> saleorderdetalld = new ArrayList<>();			
			for (SalesorderdetallListDto q : listado2) {
				Saleorderdetall salesorderdetall = new Saleorderdetall();
				salesorderdetall.setId(q.getId());
				salesorderdetall.setSale_order_id(q.getSale_order_id());
				salesorderdetall.setProduct_id(q.getProduct_id());
				salesorderdetall.setQuantity(q.getQuantity());
				salesorderdetall.setPrice(q.getPrice());
				salesorderdetall.setCurrency(q.getCurrency());
				salesorderdetall.setStatus(q.getStatus());
				saleorderdetalld.add(salesorderdetall);
				}
			salesorderListDto1.setSalesorderdetall(saleorderdetalld);
			salesorderListDto2.add(salesorderListDto1);
		}
		List<SalesorderListDto> listadoS = salesorderCreateAssembler.toDtoList(salesorderListDto2);
		return listadoS;
	}

	private Date FechaHora() {
		Date utilDate = new Date();
		long lnMilisegundos = utilDate.getTime();
		Timestamp sqlTimestamp = new Timestamp(lnMilisegundos);
		return sqlTimestamp;
	}
	
	Date obtenerFechaActual() throws ParseException {
		java.util.Date datesdd = new Date();
		java.sql.Date fechaActual = new java.sql.Date(datesdd.getTime());
		return fechaActual;        
	}
}
