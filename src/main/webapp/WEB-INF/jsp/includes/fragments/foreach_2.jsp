<h3>forEach - Form 2 (Range iterator)</h3>
<pre>
&lt;c:forEach var="item" begin="2" end="10" step="2" varStatus="status"&gt;
This is item \${item}. Status is \${status.index}&lt;br/&gt;
&lt;/c:forEach&gt;
</pre>
<c:forEach var="item" begin="2" end="10" step="2" varStatus="status">
    This is item ${item}. Status is ${status.index}<br/>
</c:forEach>
