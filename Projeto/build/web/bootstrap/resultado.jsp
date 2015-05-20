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
                
                    <span id="a"></span>
                    <span class="help-inline">%</span>
                </h6>
            </div>
            <div class="control-group">
                <label class="control-label"><h6><b>Lota��o M�dia da Propriedade:</b>
                
                    <span id="b"></span>
                    <span class="help-inline">Cabe�a(s) por hectare</span>
                    </h6>
            </div>
            <%
                }

                if (passo > 2) 
                {
            %>
            <div class="control-group">
                <label class="control-label"><h6><b>Receita por Hectare:</b>
                
                    <span id="c"></span>
                    <span class="help-inline">R$/Hectare</span>
                    </h6>
            </div>
            <%
                }

                if (passo > 3 ) 
                {
            %>
            <div class="control-group">
                <label class="control-label"><h6><b>Total dos Custos de Produ��o:</b>
                
                    <span id="d"></span>
                    <span class="help-inline">R$</span>
                    </h6>
            </div>
            <div class="control-group">
                <label class="control-label"><h6><b>Custo de Atividade de Cria:</b>
                
                    <span id="e"></span>
                    <span class="help-inline">R$</span>
                </h6>
            </div>
            <div class="control-group">
                <label class="control-label"><h6><b>Custo de Produ��o por Hectar:</b>
              
                    <span id="f"></span>
                    <span class="help-inline">R$/Hectare</span>
             </h6>
            </div>
            <%
                }
            %>
        </div>
    </div>
</aside>