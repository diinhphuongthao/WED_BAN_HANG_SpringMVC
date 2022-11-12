package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Category;

public interface CategoryDao{

	public List<Category> getDsCategory();

	public List<Category> getDsCategory(int index);

	public int demSLCategory();

	public void saveCategory(Category theCategory);

	public Category getCategory(String theId);

	public void deleteCategory(String theId);
	
	public int demSLCategoryTheoProductId(String productId);
	
	public List<Object[]> getDsCategorySearch(int indexPage, String tenS);


	
}
