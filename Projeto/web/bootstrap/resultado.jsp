<%@page import="modelo.Passos"%>
<%
Integer passo  = Integer.parseInt(request.getParameter("passo"));
Passos p = new Passos();
%>

<aside class="span3">
    <div class="panel panel-default cor2">
        <div class="panel-heading">
            <h4 class="panel-title">Resultados</h4>
        </div>
        <%                            
            if (passo > 1) 
            {
        %>
        <div class="panel-body">
            <div class="control-group">
                <label class="control-label"><h6><b>Rebanho com atividade de Cria:</b>
                
                    <span id="a"><%=p.percentualcria()%></span>
                    <span class="help-inline">%</span>
                </h6>
            </div>
            <div class="control-group">
                <label class="control-label"><h6><b>Lotação Média da Propriedade:</b>
                
                    <span id="b"><%=p.lotacaomedia()%></span>
                    <span class="help-inline">Cabeça(s) por hectare</span>
                    </h6>
            </div>
            <%
                }

                if (passo > 2) 
                {
            %>
            <div class="control-group">
                <label class="control-label"><h6><b>Receita por Hectare:</b>
                
                    <span id="c"><%=p.receitahectar()%></span>
                    <span class="help-inline">R$/Hectare</span>
                    </h6>
            </div>
            <%
                }

                if (passo > 3) 
                {
            %>
            <div class="control-group">
                <label class="control-label"><h6><b>Total dos Custos de Produção:</b>
                
                    <span id="d"><%=p.totalcustoproducao()%></span>
                    <span class="help-inline">R$</span>
                    </h6>
            </div>
            <div class="control-group">
                <label class="control-label"><h6><b>Custo de Atividade de Cria:</b>
                
                    <span id="e"><%=p.custocria()%></span>
                    <span class="help-inline">R$</span>
                </h6>
            </div>
            <div class="control-group">
                <label class="control-label"><h6><b>Custo de Produção por Hectar:</b>
              
                    <span id="f"><%=p.custohectar()%></span>
                    <span class="help-inline">R$/Hectare</span>
             </h6>
            </div>
            <%
                }
            %>
        </div>
    </div>
</aside>