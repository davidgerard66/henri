<% 
'response.write(request.servervariables("SCRIPT_NAME") )
if session("id_client")="" then 
session("redir")=request.serverVariables("HTTP_REFERRER")

response.redirect("identification.asp") 
end if

%>