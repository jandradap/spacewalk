<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://rhn.redhat.com/rhn" prefix="rhn" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>


<html>
<body>
<%@ include file="/WEB-INF/pages/common/fragments/ssm/header.jspf" %>
<h2>
  <rhn:icon type="header-configuration" title="ssmdiff.jsp.imgAlt" />
  <bean:message key="ssmdeploy.jsp.header" />
</h2>

  <div class="page-summary">
    <p>
    <bean:message key="ssmdeploy.jsp.summary"/>
    </p>
  </div>

<form method="post" name="rhn_list" action="/rhn/systems/ssm/config/DeploySubmit.do">
  <rhn:csrf />
  <c:set scope="request" var="buttonname" value="ssmdeploy.jsp.schedule" />
  <%@ include file="/WEB-INF/pages/common/fragments/configuration/ssm/configlist.jspf"%>
</form>

</body>
</html>

