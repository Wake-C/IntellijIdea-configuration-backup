
!
sonar.forceAuthenticationtrue
-
$sonar.gitlab.unique_issue_per_inlinefalse
(
sonar.gitlab.ignore_certificatefalse
!
sonar.auth.gitlab.enabledtrue
(

email.fromduofriend-rebot@goodton.cn
!
email.prefix[Duofriend-Sonar]
&
sonar.gitlab.comment_no_issuefalse
1
sonar.gitlab.urlhttps://gitlab.deeptel.com.cn
6
sonar.auth.gitlab.urlhttps://gitlab.deeptel.com.cn
.
sonar.core.id46AF5D23-AW03uKeXxRKUEEOgP9DA
/
sonar.gitlab.user_tokenCoq4TtDtQA3qswmZJnbu

sonar.lf.aboutText	Duofriend
+
email.smtp_password.securedduofen123456
9
email.smtp_username.securedduofriend-rebot@goodton.cn
*
email.smtp_host.securedmail.goodton.cn
¤
sonar.gitlab.global_templateƒ<#if qualityGate??>
SonarQube analysis indicates that quality gate is <@s status=qualityGate.status/>.
<#list qualityGate.conditions() as condition>
<@c condition=condition/>

</#list>
</#if>
<#macro c condition>* ${condition.metricName} is <@s status=condition.status/>: Actual value ${condition.actual} is ${condition.symbol}<#if condition.status != OK && condition.message?? && condition.message?trim?has_content> (${condition.message})</#if></#macro>
<#macro s status><#if status == OK>passed<#elseif status == WARN>warning<#elseif status == ERROR>failed<#else>unknown</#if></#macro>
<#assign newIssueCount = issueCount() notReportedIssueCount = issueCount(false)>
<#assign hasInlineIssues = newIssueCount gt notReportedIssueCount extraIssuesTruncated = notReportedIssueCount gt maxGlobalIssues>
<#if newIssueCount == 0>
SonarQube analysis reported no issues.
<#else>
SonarQube analysis reported ${newIssueCount} issue<#if newIssueCount gt 1>s</#if>
    <#assign newIssuesBlocker = issueCount(BLOCKER) newIssuesCritical = issueCount(CRITICAL) newIssuesMajor = issueCount(MAJOR) newIssuesMinor = issueCount(MINOR) newIssuesInfo = issueCount(INFO)>
    <#if newIssuesBlocker gt 0>
* ${emojiSeverity(BLOCKER)} ${newIssuesBlocker} blocker
    </#if>
    <#if newIssuesCritical gt 0>
* ${emojiSeverity(CRITICAL)} ${newIssuesCritical} critical
    </#if>
    <#if newIssuesMajor gt 0>
* ${emojiSeverity(MAJOR)} ${newIssuesMajor} major
    </#if>
    <#if newIssuesMinor gt 0>
* ${emojiSeverity(MINOR)} ${newIssuesMinor} minor
    </#if>
    <#if newIssuesInfo gt 0>
* ${emojiSeverity(INFO)} ${newIssuesInfo} info
    </#if>
    <#if !disableIssuesInline && hasInlineIssues>

Watch the comments in this conversation to review them.
    </#if>
    <#if notReportedIssueCount gt 0>
        <#if !disableIssuesInline>
            <#if hasInlineIssues || extraIssuesTruncated>
                <#if notReportedIssueCount <= maxGlobalIssues>

#### ${notReportedIssueCount} extra issue<#if notReportedIssueCount gt 1>s</#if>
                <#else>

#### Top ${maxGlobalIssues} extra issue<#if maxGlobalIssues gt 1>s</#if>
                </#if>
            </#if>

Note: The following issues were found on lines that were not modified in the commit. Because these issues can't be reported as line comments, they are summarized here:
        <#elseif extraIssuesTruncated>

#### Top ${maxGlobalIssues} issue<#if maxGlobalIssues gt 1>s</#if>
        </#if>

        <#assign reportedIssueCount = 0>
        <#list issues(false) as issue>
            <#if reportedIssueCount < maxGlobalIssues>
1. ${print(issue)}
            </#if>
            <#assign reportedIssueCount++>
        </#list>
        <#if notReportedIssueCount gt maxGlobalIssues>
* ... ${notReportedIssueCount-maxGlobalIssues} more
        </#if>
    </#if>
</#if>
Ã
sonar.gitlab.inline_template¢<#list issues() as issue>
<@p issue=issue/>
</#list>
<#macro p issue>
${emojiSeverity(issue.severity)} ${issue.message} [:blue_book:](${issue.ruleLink})
</#macro>
0
sonar.core.startTime2020-05-30T21:43:01+0000