package com.matrix.controller.portal;

import com.matrix.constants.Constant;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.User;
import com.matrix.pojo.Video;
import com.matrix.service.IFavouriteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 门户收藏的Controller
 *
 * Created by yanglele on 2017/8/3.
 */
@Controller
@RequestMapping("/favourite")
public class FavouriteController {

    @Autowired
    private IFavouriteService iFavouriteService;

    /**
     * 收藏视频
     *
     * @param videoId 视频id
     * @return
     */
    @RequestMapping(value = "add.do")
    @ResponseBody
    public ServerResponse<String> add(@RequestParam("videoId") Integer videoId,
                                      HttpSession session) {
        User user = (User) session.getAttribute(Constant.CURRENT_USER);
        return iFavouriteService.add(user.getId(), videoId);
    }

    /**
     * 删除收藏视频
     *
     * @param favouriteId 收藏id
     * @param videoId     视频id
     * @return
     */
    @RequestMapping(value = "del.do")
    @ResponseBody
    public ServerResponse<String> del(@RequestParam("favourite") Integer favouriteId,
                                      @RequestParam("videoId") Integer videoId,
                                      HttpSession session) {
        User user = (User) session.getAttribute(Constant.CURRENT_USER);
        return iFavouriteService.del(favouriteId, user.getId(), videoId);
    }

    /**
     * 用户收藏视频列表
     *
     * @return
     */
    @RequestMapping(value = "list.do")
    @ResponseBody
    public ServerResponse<List<Video>> list(HttpSession session) {
        User user = (User) session.getAttribute(Constant.CURRENT_USER);
        return iFavouriteService.list(user.getId());
    }

}
