package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 电影信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-03-16 13:48:42
 */
@TableName("dianyingxinxi")
public class DianyingxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public DianyingxinxiEntity() {
		
	}
	
	public DianyingxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 电影名称
	 */
					
	private String dianyingmingcheng;
	
	/**
	 * 封面
	 */
					
	private String fengmian;
	
	/**
	 * 电影类型
	 */
					
	private String dianyingleixing;
	
	/**
	 * 导演
	 */
					
	private String daoyan;
	
	/**
	 * 演员
	 */
					
	private String yanyuan;
	
	/**
	 * 电影时长
	 */
					
	private String dianyingshizhang;
	
	/**
	 * 上档日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date shangdangriqi;
	
	/**
	 * 电影简介
	 */
					
	private String dianyingjianjie;
	
	/**
	 * 发布公司
	 */
					
	private String fabugongsi;
	
	/**
	 * 注意事项
	 */
					
	private String zhuyishixiang;
	
	/**
	 * 视频
	 */
					
	private String shipin;
	
	/**
	 * 赞
	 */
					
	private Integer thumbsupnum;
	
	/**
	 * 踩
	 */
					
	private Integer crazilynum;
	
	/**
	 * 最近点击时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date clicktime;
	
	/**
	 * 点击次数
	 */
					
	private Integer clicknum;
	
	/**
	 * 价格
	 */
					
	private Float price;
	
	/**
	 * 用户id
	 */
					
	private Long userid;
	
	/**
	 * 座位总数
	 */
					
	private Integer number;
	
	/**
	 * 已选座位[用,号隔开]
	 */
					
	private String selected;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：电影名称
	 */
	public void setDianyingmingcheng(String dianyingmingcheng) {
		this.dianyingmingcheng = dianyingmingcheng;
	}
	/**
	 * 获取：电影名称
	 */
	public String getDianyingmingcheng() {
		return dianyingmingcheng;
	}
	/**
	 * 设置：封面
	 */
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
	/**
	 * 设置：电影类型
	 */
	public void setDianyingleixing(String dianyingleixing) {
		this.dianyingleixing = dianyingleixing;
	}
	/**
	 * 获取：电影类型
	 */
	public String getDianyingleixing() {
		return dianyingleixing;
	}
	/**
	 * 设置：导演
	 */
	public void setDaoyan(String daoyan) {
		this.daoyan = daoyan;
	}
	/**
	 * 获取：导演
	 */
	public String getDaoyan() {
		return daoyan;
	}
	/**
	 * 设置：演员
	 */
	public void setYanyuan(String yanyuan) {
		this.yanyuan = yanyuan;
	}
	/**
	 * 获取：演员
	 */
	public String getYanyuan() {
		return yanyuan;
	}
	/**
	 * 设置：电影时长
	 */
	public void setDianyingshizhang(String dianyingshizhang) {
		this.dianyingshizhang = dianyingshizhang;
	}
	/**
	 * 获取：电影时长
	 */
	public String getDianyingshizhang() {
		return dianyingshizhang;
	}
	/**
	 * 设置：上档日期
	 */
	public void setShangdangriqi(Date shangdangriqi) {
		this.shangdangriqi = shangdangriqi;
	}
	/**
	 * 获取：上档日期
	 */
	public Date getShangdangriqi() {
		return shangdangriqi;
	}
	/**
	 * 设置：电影简介
	 */
	public void setDianyingjianjie(String dianyingjianjie) {
		this.dianyingjianjie = dianyingjianjie;
	}
	/**
	 * 获取：电影简介
	 */
	public String getDianyingjianjie() {
		return dianyingjianjie;
	}
	/**
	 * 设置：发布公司
	 */
	public void setFabugongsi(String fabugongsi) {
		this.fabugongsi = fabugongsi;
	}
	/**
	 * 获取：发布公司
	 */
	public String getFabugongsi() {
		return fabugongsi;
	}
	/**
	 * 设置：注意事项
	 */
	public void setZhuyishixiang(String zhuyishixiang) {
		this.zhuyishixiang = zhuyishixiang;
	}
	/**
	 * 获取：注意事项
	 */
	public String getZhuyishixiang() {
		return zhuyishixiang;
	}
	/**
	 * 设置：视频
	 */
	public void setShipin(String shipin) {
		this.shipin = shipin;
	}
	/**
	 * 获取：视频
	 */
	public String getShipin() {
		return shipin;
	}
	/**
	 * 设置：赞
	 */
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
	/**
	 * 设置：踩
	 */
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
	/**
	 * 设置：最近点击时间
	 */
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
	/**
	 * 设置：点击次数
	 */
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
	/**
	 * 设置：价格
	 */
	public void setPrice(Float price) {
		this.price = price;
	}
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
	/**
	 * 设置：用户id
	 */
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
	/**
	 * 设置：座位总数
	 */
	public void setNumber(Integer number) {
		this.number = number;
	}
	/**
	 * 获取：座位总数
	 */
	public Integer getNumber() {
		return number;
	}
	/**
	 * 设置：已选座位[用,号隔开]
	 */
	public void setSelected(String selected) {
		this.selected = selected;
	}
	/**
	 * 获取：已选座位[用,号隔开]
	 */
	public String getSelected() {
		return selected;
	}

}
