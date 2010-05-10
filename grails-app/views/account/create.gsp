

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Account</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Account List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Account</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${accountInstance}">
            <div class="errors">
                <g:renderErrors bean="${accountInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="balance">Balance:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:accountInstance,field:'balance','errors')}">
                                    <input type="text" id="balance" name="balance" value="${fieldValue(bean:accountInstance,field:'balance')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="owner">Owner:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:accountInstance,field:'owner','errors')}">
                                    <g:select optionKey="id" from="${Person.list()}" name="owner.id" value="${accountInstance?.owner?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="updatedBy">Updated By:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:accountInstance,field:'updatedBy','errors')}">
                                    <g:select optionKey="id" from="${Person.list()}" name="updatedBy.id" value="${accountInstance?.updatedBy?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="updatedDate">Updated Date:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:accountInstance,field:'updatedDate','errors')}">
                                    <g:datePicker name="updatedDate" value="${accountInstance?.updatedDate}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
