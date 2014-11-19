<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>

<g:if test="${flash.error}">
    <div class="errors">${flash.error}</div>
</g:if>


<oauth:connect provider="google">Sign in using Google</oauth:connect><br/>


<g:if test="${data}">
    <div style="margin-top: 20px">
        <h3>${provider} Response</h3>
        <table>
            <thead>
            <tr>
                <th>Key</th>
                <th>Value</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${data?.keySet()}" var="resp">
               <g:if test="${resp != 'picture' }">
                <tr>
                    <td>${resp}</td>
                    <td>${data[resp]}</td>
                </tr>
                </g:if>
            </g:each>
            <tr>
              <td>Picture</td>
              <td><img src="${data.picture }" width="200" height="200"></td>
            </tr>
            </tbody>
        </table>
    </div>
</g:if>
</body>
</html>
