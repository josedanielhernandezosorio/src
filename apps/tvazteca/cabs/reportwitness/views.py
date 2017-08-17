import json
import logging
import logging.config

from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render

from apps.tvazteca.cabs.coding.databases.connection import select
from apps.tvazteca.cabs.coding.query import queryTypeReport, querySubReport, queryDataWitness, queryActionReport
from apps.tvazteca.cabs.coding.util import *
from apps.tvazteca.cabs.login.views import checkValue
from apps.tvazteca.cabs.reportwitness.form import ReportWitness


# Create your views here.


def startReportWitness(request, id=None):
    logging.getLogger('info_logger').info('--- startReportWitness ---')

    if checkValue(request):
        query = queryTypeReport()
        # type_report = select(query, 'tvazteca_vidnotd')
        type_report = select(query, 'tvazteca_bloq')
        query = queryDataWitness(id)
        # witness = select(query, 'tvazteca_vidnotd')
        witness = select(query, 'tvazteca_bloq')
        witness[0]['TIPO_MUX'] = optionMux(witness[0]['TIPO_MUX'])
        return render(request, 'report/witness.html', {'type_report': type_report, 'witness': witness})
    else:
        return render(request, 'login/start_login.html', {
            'message_warning': 'Para poder crear un reporte de un testigo se necesita iniciar sesión'})


def listSubReportJSON(request):
    logging.getLogger('info_logger').info('--- listSubReportJSON ---')

    if not checkValue(request):
        date = {"error": "error"}
        json_data = json.dumps(date)
        return HttpResponse(json_data, content_type='application/json')

    type = request.GET.get('type')

    if type == 0:
        return HttpResponse({}, content_type='application/json')

    query = querySubReport(type)
    # dates = select(query, 'tvazteca_vidnotd')
    dates = select(query, 'tvazteca_bloq')

    json_data = json.dumps(dates)

    return HttpResponse(json_data, content_type='application/json')


def listActionReportJSON(request):
    logging.getLogger('info_logger').info('--- listActionReportJSON ---')

    if not checkValue(request):
        date = {"error": "error"}
        json_data = json.dumps(date)
        return HttpResponse(json_data, content_type='application/json')

    type = request.GET.get('type')

    if type == 0:
        return HttpResponse({}, content_type='application/json')

    query = queryActionReport(type)
    # dates = select(query, 'tvazteca_vidnotd')
    dates = select(query, 'tvazteca_bloq')

    json_data = json.dumps(dates)

    return HttpResponse(json_data, content_type='application/json')


def insertReportWitness(request):
    logging.getLogger('info_logger').info('--- insertReportWitness ---')

    if not checkValue(request):
        return render(request, 'login/start_login.html')

    if request.method == 'POST':
        form = ReportWitness(request.POST)
        print('entrando al formulario1')
        if form.is_valid():
            print('entrando al formulario2')

    return HttpResponseRedirect('/inventario_testigos/inicio/')
