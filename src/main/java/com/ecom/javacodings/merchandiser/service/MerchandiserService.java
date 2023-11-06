package com.ecom.javacodings.merchandiser.service;

import com.ecom.javacodings.common.transfer.ItemDTO;
import com.ecom.javacodings.common.transfer.PageDTO;
import com.ecom.javacodings.common.transfer.TagDTO;
import com.ecom.javacodings.merchandiser.access.ItemManagerDAO;
import com.ecom.javacodings.merchandiser.access.TagManagerDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("mdService")
public class MerchandiserService implements ManagerService {
    // Region 상품 관리
    @Autowired
    ItemManagerDAO itemDAO;

    @Autowired
    TagManagerDAO tagDAO;

    @Override
    public List<ItemDTO> listItem(PageDTO page){
        List<ItemDTO> result = itemDAO.listItem(page);
        return result;
    }
    @Override
    public int updateItem(ItemDTO item) {
        return itemDAO.updateItem(item);
    }
    @Override
    public int deleteItem(ItemDTO item) {
        return itemDAO.deleteItem(item);
    }
    @Override
    public ItemDTO getItemById(String id) { return itemDAO.getItemById(id); }
    // Region 상품 메타 정보
    public List<String> listCategory() {
        List<String> result = itemDAO.listCategory();
        return result;
    }

    public List<String> listTags() {
        return tagDAO.listTags();
    }

    @Override
    public List<TagDTO> listTagsById(String itemId) {
        return tagDAO.listTagsById(itemId);
    }
    // End Region 상품 메타 정보
    // End Region 상품 관리
}