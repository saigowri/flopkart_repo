package com.iiitb.ooadvoid.pojo;

public class FlopkartItem
{
	private Integer id;
	private String itemid;
	private String itemname;
	private String category;
	private Integer price;
	private Integer discount;
	private Integer stars;

	public Integer getId()
	{
		return id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public String getItemid()
	{
		return itemid;
	}

	public void setItemid(String itemid)
	{
		this.itemid = itemid;
	}

	public String getItemname()
	{
		return itemname;
	}

	public void setItemname(String itemname)
	{
		this.itemname = itemname;
	}

	public String getCategory()
	{
		return category;
	}

	public void setCategory(String category)
	{
		this.category = category;
	}

	public Integer getPrice()
	{
		return price;
	}

	public void setPrice(Integer price)
	{
		this.price = price;
	}

	public Integer getDiscount()
	{
		return discount;
	}

	public void setDiscount(Integer discount)
	{
		this.discount = discount;
	}

	public Integer getStars()
	{
		return stars;
	}

	public void setStars(Integer stars)
	{
		this.stars = stars;
	}

}