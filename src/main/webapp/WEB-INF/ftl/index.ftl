<!DOCTYPE html>
<html>

    <head>
        <title>Currency Rates By Date</title>

        <script src="js/jquery-2.2.0.min.js"></script>
        <script src="js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="js/jquery-ui-1.11.4.custom/jquery-ui.css">
        <script src="js/DataTables-1.10.10/media/js/jquery.dataTables.min.js"></script>
        <script src="js/DataTables-1.10.10/media/js/dataTables.jqueryui.min.js"></script>
        <link rel="stylesheet" href="js/DataTables-1.10.10/media/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="js/DataTables-1.10.10/media/css/dataTables.jqueryui.min.css">
        <script src="js/main.js"></script>

    </head>
    <body class="ui-widget" style="font-size: 0.9em">
        <div class="ui-corner-all ui-state-default" style="text-align: center;" >
            <H2>
                Currencies Rates By Date
            </H2>
        </div>
        <#if model["getRatesByDateError"]?has_content>
            <div id="date_field_error" class="ui-state-error ui-corner-all" style="padding: 0 .7em; margin-top: 15px;">${model["getRatesByDateError"]}</div>
        </#if>

        <#if model["dateError"]?has_content>
            <#assign display = "" />
            <#assign dateError = model["dateError"] />
        <#else>
            <#assign display = "display: none;" />
            <#assign dateError = "" />
        </#if>

        <#if model["dateVal"]?has_content>
            <#assign dateVal = model["dateVal"] />
        <#else>
            <#assign dateVal = "" />
        </#if>

        <div id="content" style="margin-top: 20px">
            <fieldset>
                <legend>Select date</legend>
                    <form id="date_select_form" name="date_select_form" action="getRatesByDate.html" method="post">
                        <input type="text" id="datepicker" name="date" style="width: 100px;" value="${dateVal}" maxlength="10" size="12" />
                        <input type="submit" id="button" value="   Get Currencies Rates   " />
                        <div id="date_field_error" class="ui-state-error ui-corner-all" style="${display} padding: 0 .7em; margin-top: 10px;">${dateError}</div>
                    </form>
            </fieldset>

        <#if model["emptyList"]?has_content>
            <div id="date_field_error" class="ui-state-highlight ui-corner-all" style="font-size: 1.1em; text-align: center; padding: 0 .7em; margin-top: 30px;">${model["emptyList"]}</div>
        </#if>

        <#if model["itemsList"]?has_content>
            <div style="margin-top: 30px;">
                <div>Currencies rates for - ${dateVal}</div>
                <table id="datatable">
                    <thead>
                        <tr>
                            <th>Currency</th>
                            <th>Rate</th>
                            <th>Quantity</th>
                            <th>Unit</th>
                        </tr>
                    </thead>
                    <tbody>
                    <#list model["itemsList"] as item>
                        <tr>
                            <td>${item.currency}</td> <td>${item.rate}</td> <td>${item.quantity}</td> <td>${item.unit}</td>
                        </tr>
                    </#list>
                    </tbody>
                </table>
            </div>
        </#if>
        </div>
    </body>
</html>