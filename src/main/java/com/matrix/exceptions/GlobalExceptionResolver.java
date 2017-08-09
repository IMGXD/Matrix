package com.matrix.exceptions;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yanglele on 2017/7/29.
 */
public class GlobalExceptionResolver implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest request,
                                         HttpServletResponse response,
                                         Object handler,
                                         Exception ex) {
        ModelAndView mv = new ModelAndView();
        /*if (handler instanceof HandlerMethod) {
            HandlerMethod handlerMethod = (HandlerMethod) handler;
            ResponseBody responseBody = AnnotationUtils.getAnnotation(handlerMethod.getMethod(), ResponseBody.class);
            if (ex instanceof ParamsException) {
                ParamsException paramsException = (ParamsException) ex;
                if (null != responseBody) {
                    MessageModel messageModel = new MessageModel();
                    messageModel.setCode(paramsException.getErrorCode());
                    messageModel.setMsg(paramsException.getErrorMsg());
                    PrintWriter pw = null;
                    try {
                        response.setContentType("application/json;charset=utf-8");
                        pw = response.getWriter();
                    } catch (IOException e) {
                        e.printStackTrace();
                        messageModel.setCode(WangCaiConstant.OPS_FAILED_CODE);
                        messageModel.setMsg(WangCaiConstant.OPS_FAILED_MSG);
                    } finally {
                        pw.write(JSON.toJSONString(messageModel));
                        pw.flush();
                        pw.close();
                    }
                } else {
                    mv = getDefaultModelAndView(ex);
                    mv.addObject("code", paramsException.getErrorCode());
                    mv.addObject("ex", paramsException.getErrorMsg());
                }
            }


        } else {
            mv = getDefaultModelAndView(ex);
        }*/

        return mv;
    }

    private ModelAndView getDefaultModelAndView(Exception ex) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("error");
        mv.addObject("ex", ex.getMessage());
        mv.addObject("code", 300);
        return mv;
    }

}
