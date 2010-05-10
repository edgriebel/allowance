

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Transaction</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Transaction List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Transaction</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Transaction</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${transactionInstance}">
            <div class="errors">
                <g:renderErrors bean="${transactionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${transactionInstance?.id}" />
                <input type="hidden" name="version" value="${transactionInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="account">Account:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'account','errors')}">
                                    <g:select optionKey="id" from="${Account.list()}" name="account.id" value="${transactionInstance?.account?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="amount">Amount:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'amount','errors')}">
                                    <input type="text" id="amount" name="amount" value="${fieldValue(bean:transactionInstance,field:'amount')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="changeDate">Change Date:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'changeDate','errors')}">
                                    <g:datePicker name="changeDate" value="${transactionInstance?.changeDate}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="changedBy">Changed By:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'changedBy','errors')}">
                                    <g:select optionKey="id" from="${Person.list()}" name="changedBy.id" value="${transactionInstance?.changedBy?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="reason">Reason:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionInstance,field:'reason','errors')}">
                                    <input type="text" id="reason" name="reason" value="${fieldValue(bean:transactionInstance,field:'reason')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
