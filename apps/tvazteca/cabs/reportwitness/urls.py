from django.conf.urls import url

from apps.tvazteca.cabs.reportwitness.views import startReportWitness, listSubReportJSON, listActionReportJSON, \
    insertReportWitness, listHistory, endReport, updateReport

urlpatterns = [
    url(r'^(?P<id>\S+)/$', startReportWitness, name='start_report_witness_id'),
    url(r'^$', startReportWitness, name='start_report_witness'),
    url(r'^json_00040$', listSubReportJSON, name='list_sub_report'),
    url(r'^json_00050$', listActionReportJSON, name='list_action_report'),
    url(r'^json_00060$', listHistory, name='list_history'),
    url(r'^insert_report$', insertReportWitness, name='insert_report'),
    url(r'^end_report/$', endReport, name='end_report'),
    url(r'^end_report/(?P<id_action>\S+)/(?P<id_state>\S+)/(?P<comment>[^/]+)$', endReport, name='end_report'),
    url(r'^update_report/$', updateReport, name='update_report'),
    url(r'^update_report/(?P<id_action>\S+)/(?P<id_state>\S+)/(?P<comment>[^/]+)$', updateReport, name='update_report'),
]
