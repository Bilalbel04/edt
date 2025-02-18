




<!DOCTYPE html>
<html class="gl-light ui-neutral with-top-bar with-header " lang="en">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width, initial-scale=1" name="viewport">
<title>Jordi / m02-bd · GitLab</title>
<script nonce="m5dCD9LRtdye1GLi8xJXHg==">
//<![CDATA[
window.gon={};gon.features={"inlineBlame":false,"removeMonitorMetrics":true,"issueEmailParticipants":true,"editBranchRules":true,"pageSpecificStyles":false,"blobRepositoryVueHeaderApp":true,"blobOverflowMenu":false,"directoryCodeDropdownUpdates":false,"workItems":true,"workItemsBeta":false,"workItemsAlpha":false,"extendedExpiryWebhookExecutionSetting":false,"workItemDescriptionTemplates":true};gon.licensed_features={"remoteDevelopment":true};
//]]>
</script>


<script nonce="m5dCD9LRtdye1GLi8xJXHg==">
//<![CDATA[
var gl = window.gl || {};
gl.startup_calls = {"/jandugar/m02-bd/-/refs/master/logs_tree/?format=json\u0026offset=0\u0026ref_type=heads":{},"/jandugar/m02-bd/-/blob/master/README.md?format=json\u0026viewer=rich":{}};
gl.startup_graphql_calls = [{"query":"query pathLastCommit($projectPath: ID!, $path: String, $ref: String!, $refType: RefType) {\n  project(fullPath: $projectPath) {\n    __typename\n    id\n    repository {\n      __typename\n      paginatedTree(path: $path, ref: $ref, refType: $refType) {\n        __typename\n        nodes {\n          __typename\n          lastCommit {\n            __typename\n            id\n            sha\n            title\n            titleHtml\n            descriptionHtml\n            message\n            webPath\n            authoredDate\n            authorName\n            authorGravatar\n            author {\n              __typename\n              id\n              name\n              avatarUrl\n              webPath\n            }\n            signature {\n              __typename\n              ... on GpgSignature {\n                gpgKeyPrimaryKeyid\n                verificationStatus\n              }\n              ... on X509Signature {\n                verificationStatus\n                x509Certificate {\n                  id\n                  subject\n                  subjectKeyIdentifier\n                  x509Issuer {\n                    id\n                    subject\n                    subjectKeyIdentifier\n                  }\n                }\n              }\n              ... on SshSignature {\n                verificationStatus\n                keyFingerprintSha256\n              }\n            }\n            pipelines(ref: $ref, first: 1) {\n              __typename\n              edges {\n                __typename\n                node {\n                  __typename\n                  id\n                  detailedStatus {\n                    __typename\n                    id\n                    detailsPath\n                    icon\n                    tooltip\n                    text\n                    group\n                  }\n                }\n              }\n            }\n          }\n        }\n      }\n    }\n  }\n}\n","variables":{"projectPath":"jandugar/m02-bd","ref":"master","path":""}}];

if (gl.startup_calls && window.fetch) {
  Object.keys(gl.startup_calls).forEach(apiCall => {
   gl.startup_calls[apiCall] = {
      fetchCall: fetch(apiCall, {
        // Emulate XHR for Rails AJAX request checks
        headers: {
          'X-Requested-With': 'XMLHttpRequest'
        },
        // fetch won’t send cookies in older browsers, unless you set the credentials init option.
        // We set to `same-origin` which is default value in modern browsers.
        // See https://github.com/whatwg/fetch/pull/585 for more information.
        credentials: 'same-origin'
      })
    };
  });
}
if (gl.startup_graphql_calls && window.fetch) {
  const headers = {"X-CSRF-Token":"PB-tsM17VJBR9Er0cw__LyD7MEyiJtIHd4NaOkX0KP27EJTr_JcT1oeSWvLXV2nazIkTRxN6VE5v_J1eoaZ_yA","x-gitlab-feature-category":"groups_and_projects"};
  const url = `https://gitlab.com/api/graphql`

  const opts = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      ...headers,
    }
  };

  gl.startup_graphql_calls = gl.startup_graphql_calls.map(call => ({
    ...call,
    fetchCall: fetch(url, {
      ...opts,
      credentials: 'same-origin',
      body: JSON.stringify(call)
    })
  }))
}


//]]>
</script>



<link rel="stylesheet" href="/assets/application-61901f0326d988f31e7216b84669e4fa62cd86a0de409e286e83cd639cc996d4.css" />
<link rel="stylesheet" href="/assets/page_bundles/project-09098f19d751aaa2c56361d68ded871992a373822d54f9658406471655477e88.css" /><link rel="stylesheet" href="/assets/page_bundles/tree-49ae6a2f72af332906799a87b8b74e44ede65ce71f393346d0a1abb47656411a.css" /><link rel="stylesheet" href="/assets/page_bundles/commit_description-1e2cba4dda3c7b30dd84924809020c569f1308dea51520fe1dd5d4ce31403195.css" /><link rel="stylesheet" href="/assets/page_bundles/projects-ef49918abcedc951ed001e2954b3004935dadcc67b6cf14868d935665f66073c.css" /><link rel="stylesheet" href="/assets/page_bundles/work_items-22a76cdd1fe2ae5431b7ff603f86212acaf81b49c4a932f19e3b3222dc1881ee.css" /><link rel="stylesheet" href="/assets/page_bundles/notes_shared-30de79203a0836dddd3a4cf7364d63afb16a0f2deb0bbc654b00692872696739.css" />
<link rel="stylesheet" href="/assets/application_utilities-58bec0f2dc46133fc9e8548af9854688398e9d7263cc0fd95ec5739f2a069dec.css" />
<link rel="stylesheet" href="/assets/tailwind-5a00dff8ce8fc18c18a3c6b73b419c326b11e7dafe7cb551d38642da788f5e8f.css" />


<link rel="stylesheet" href="/assets/fonts-fae5d3f79948bd85f18b6513a025f863b19636e85b09a1492907eb4b1bb0557b.css" />
<link rel="stylesheet" href="/assets/highlight/themes/white-99cce4f4b362f6840d7134d4129668929fde49c4da11d6ebf17f99768adbd868.css" />

<script src="/assets/webpack/runtime.8806f048.bundle.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/main.a61010e6.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/tracker.323eafd8.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/analytics.20a07e5c.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script nonce="m5dCD9LRtdye1GLi8xJXHg==">
//<![CDATA[
window.snowplowOptions = {"namespace":"gl","hostname":"snowplowprd.trx.gitlab.net","cookieDomain":".gitlab.com","appId":"gitlab","formTracking":true,"linkClickTracking":true}

gl = window.gl || {};
gl.snowplowStandardContext = {"schema":"iglu:com.gitlab/gitlab_standard/jsonschema/1-1-1","data":{"environment":"production","source":"gitlab-rails","correlation_id":"01JMCHS33CQE189M55T0ZH6GXG","plan":"free","extra":{},"user_id":null,"global_user_id":null,"is_gitlab_team_member":null,"namespace_id":309768,"project_id":14182314,"feature_enabled_by_namespace_ids":null,"realm":"saas","instance_id":"ea8bf810-1d6f-4a6a-b4fd-93e8cbd8b57f","host_name":"gitlab-webservice-web-dddbb84d4-n6fkg","instance_version":"17.9.0","context_generated_at":"2025-02-18T12:50:56.478Z"}}
gl.snowplowPseudonymizedPageUrl = "https://gitlab.com/namespace309768/project14182314";
gl.maskedDefaultReferrerUrl = null;
gl.ga4MeasurementId = 'G-ENFH3X7M5Y';


//]]>
</script>
<link rel="preload" href="/assets/application_utilities-58bec0f2dc46133fc9e8548af9854688398e9d7263cc0fd95ec5739f2a069dec.css" as="style" type="text/css" nonce="Y+bgJbijXzAi441qsKOjMg==">
<link rel="preload" href="/assets/application-61901f0326d988f31e7216b84669e4fa62cd86a0de409e286e83cd639cc996d4.css" as="style" type="text/css" nonce="Y+bgJbijXzAi441qsKOjMg==">
<link rel="preload" href="/assets/highlight/themes/white-99cce4f4b362f6840d7134d4129668929fde49c4da11d6ebf17f99768adbd868.css" as="style" type="text/css" nonce="Y+bgJbijXzAi441qsKOjMg==">
<link crossorigin="" href="https://snowplowprd.trx.gitlab.net" rel="preconnect">
<link as="font" crossorigin="" href="/assets/gitlab-sans/GitLabSans-1e0a5107ea3bbd4be93e8ad2c503467e43166cd37e4293570b490e0812ede98b.woff2" rel="preload">
<link as="font" crossorigin="" href="/assets/gitlab-sans/GitLabSans-Italic-38eaf1a569a54ab28c58b92a4a8de3afb96b6ebc250cf372003a7b38151848cc.woff2" rel="preload">
<link as="font" crossorigin="" href="/assets/gitlab-mono/GitLabMono-08d2c5e8ff8fd3d2d6ec55bc7713380f8981c35f9d2df14e12b835464d6e8f23.woff2" rel="preload">
<link as="font" crossorigin="" href="/assets/gitlab-mono/GitLabMono-Italic-38e58d8df29485a20c550da1d0111e2c2169f6dcbcf894f2cd3afbdd97bcc588.woff2" rel="preload">
<link rel="preload" href="/assets/fonts-fae5d3f79948bd85f18b6513a025f863b19636e85b09a1492907eb4b1bb0557b.css" as="style" type="text/css" nonce="Y+bgJbijXzAi441qsKOjMg==">



<script src="/assets/webpack/sentry.be2045a7.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>

<script src="/assets/webpack/commons-pages.groups.analytics.dashboards-pages.groups.harbor.repositories-pages.groups.iteration_ca-fae0f519.5b107e61.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.groups.new-pages.import.gitlab_projects.new-pages.import.manifest.new-pages.projects.n-44c6c18e.77d582f4.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.search.show-super_sidebar.3f577741.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/super_sidebar.07831d6d.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.projects-pages.projects.activity-pages.projects.alert_management.details-pages.project-68d77824.79456cb0.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.groups.packages-pages.groups.registry.repositories-pages.groups.security.policies.edit-429ebfda.823e1603.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/105.c82720fa.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/106.f0b1a739.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/127.d4e91245.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.snippets.show-pages.projects.tre-c684fcf6.03ac3868.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.edit-pages.projects.blob.new-pages.projects.blob.show-pages.projects.sho-ec79e51c.9677e14e.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.groups.show-pages.projects.blob.show-pages.projects.show-pages.projects.tree.show.dd816e95.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.security.vulnerabilities.show-pages.projects.show-pa-5ff3b950.5fc57aec.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.tree.show.4a86bbc9.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.groups.show-pages.projects.home_panel-pages.projects.show.1654d5b4.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/commons-pages.projects.home_panel-pages.projects.show.1333b70e.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>
<script src="/assets/webpack/pages.projects.show.635280e8.chunk.js" defer="defer" nonce="m5dCD9LRtdye1GLi8xJXHg=="></script>

<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content="Jordi / m02-bd · GitLab" property="og:title">
<meta content="Curs corresponent al mòdul M02-Bases de dades, cicle de Desenvolupament d&#39;aplicacions web. Institut Escola del Treball (Barcelona)" property="og:description">
<meta content="https://gitlab.com/jandugar/m02-bd/-/avatar" property="og:image">
<meta content="64" property="og:image:width">
<meta content="64" property="og:image:height">
<meta content="https://gitlab.com/jandugar/m02-bd" property="og:url">
<meta content="summary" property="twitter:card">
<meta content="Jordi / m02-bd · GitLab" property="twitter:title">
<meta content="Curs corresponent al mòdul M02-Bases de dades, cicle de Desenvolupament d&#39;aplicacions web. Institut Escola del Treball (Barcelona)" property="twitter:description">
<meta content="https://gitlab.com/jandugar/m02-bd/-/avatar" property="twitter:image">

<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="x_gmz9X32L-3k1RcFXr1lck5DnNlct6MVP1wHdn1QzNA9x-U5Buf-WH1RFqxImNgJUsteNQuWMVMgrd5PacUBg" />
<meta name="csp-nonce" content="m5dCD9LRtdye1GLi8xJXHg==" />
<meta name="action-cable-url" content="/-/cable" />
<link href="/-/manifest.json" rel="manifest">
<link rel="icon" type="image/png" href="/assets/favicon-72a2cad5025aa931d6ea56c3201d1f18e68a8cd39788c7c80d5b2b82aa5143ef.png" id="favicon" data-original-href="/assets/favicon-72a2cad5025aa931d6ea56c3201d1f18e68a8cd39788c7c80d5b2b82aa5143ef.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/apple-touch-icon-b049d4bc0dd9626f31db825d61880737befc7835982586d015bded10b4435460.png" />
<link href="/search/opensearch.xml" rel="search" title="Search GitLab" type="application/opensearchdescription+xml">
<link rel="alternate" type="application/atom+xml" title="m02-bd activity" href="/jandugar/m02-bd.atom" />




<meta content="Curs corresponent al mòdul M02-Bases de dades, cicle de Desenvolupament d&#39;aplicacions web. Institut Escola del Treball (Barcelona)" name="description">
<meta content="#ececef" name="theme-color">
</head>

<body class="tab-width-8 gl-browser-generic gl-platform-other" data-namespace-id="309768" data-page="projects:show" data-page-type-id="m02-bd" data-project="m02-bd" data-project-full-path="jandugar/m02-bd" data-project-id="14182314">

<script nonce="m5dCD9LRtdye1GLi8xJXHg==">
//<![CDATA[
gl = window.gl || {};
gl.client = {"isGeneric":true,"isOther":true};


//]]>
</script>


<header class="header-logged-out" data-testid="navbar">
<a class="gl-sr-only gl-accessibility" href="#content-body">Skip to content</a>
<div class="container-fluid">
<nav aria-label="Explore GitLab" class="header-logged-out-nav gl-flex gl-gap-3 gl-justify-between">
<div class="gl-flex gl-items-center gl-gap-1">
<span class="gl-sr-only">GitLab</span>
<a title="Homepage" id="logo" class="header-logged-out-logo has-tooltip" aria-label="Homepage" data-track-label="main_navigation" data-track-action="click_gitlab_logo_link" data-track-property="navigation_top" href="/"><svg aria-hidden="true" role="img" class="tanuki-logo" width="25" height="24" viewBox="0 0 25 24" fill="none" xmlns="http://www.w3.org/2000/svg">
  <path class="tanuki-shape tanuki" d="m24.507 9.5-.034-.09L21.082.562a.896.896 0 0 0-1.694.091l-2.29 7.01H7.825L5.535.653a.898.898 0 0 0-1.694-.09L.451 9.411.416 9.5a6.297 6.297 0 0 0 2.09 7.278l.012.01.03.022 5.16 3.867 2.56 1.935 1.554 1.176a1.051 1.051 0 0 0 1.268 0l1.555-1.176 2.56-1.935 5.197-3.89.014-.01A6.297 6.297 0 0 0 24.507 9.5Z"
        fill="#E24329"/>
  <path class="tanuki-shape right-cheek" d="m24.507 9.5-.034-.09a11.44 11.44 0 0 0-4.56 2.051l-7.447 5.632 4.742 3.584 5.197-3.89.014-.01A6.297 6.297 0 0 0 24.507 9.5Z"
        fill="#FC6D26"/>
  <path class="tanuki-shape chin" d="m7.707 20.677 2.56 1.935 1.555 1.176a1.051 1.051 0 0 0 1.268 0l1.555-1.176 2.56-1.935-4.743-3.584-4.755 3.584Z"
        fill="#FCA326"/>
  <path class="tanuki-shape left-cheek" d="M5.01 11.461a11.43 11.43 0 0 0-4.56-2.05L.416 9.5a6.297 6.297 0 0 0 2.09 7.278l.012.01.03.022 5.16 3.867 4.745-3.584-7.444-5.632Z"
        fill="#FC6D26"/>
</svg>

</a></div>
<ul class="gl-list-none gl-p-0 gl-m-0 gl-flex gl-gap-3 gl-items-center gl-grow">
<li class="header-logged-out-nav-item header-logged-out-dropdown md:gl-hidden">
<button class="header-logged-out-toggle" data-toggle="dropdown" type="button">
<span class="gl-sr-only">
Menu
</span>
<svg class="s16" data-testid="hamburger-icon"><use href="/assets/icons-aa2c8ddf99d22b77153ca2bb092a23889c12c597fc8b8de94b0f730eb53513f6.svg#hamburger"></use></svg>
</button>
<div class="dropdown-menu">
<ul>
<li>
<a href="https://about.gitlab.com/why-gitlab">Why GitLab
</a></li>
<li>
<a href="https://about.gitlab.com/pricing">Pricing
</a></li>
<li>
<a href="https://about.gitlab.com/sales">Contact Sales
</a></li>
<li>
<a href="/explore">Explore</a>
</li>
</ul>
</div>
</li>
<li class="header-logged-out-nav-item gl-hidden md:gl-inline-block">
<a href="https://about.gitlab.com/why-gitlab">Why GitLab
</a></li>
<li class="header-logged-out-nav-item gl-hidden md:gl-inline-block">
<a href="https://about.gitlab.com/pricing">Pricing
</a></li>
<li class="header-logged-out-nav-item gl-hidden gl-inline-block">
<a href="https://about.gitlab.com/sales">Contact Sales
</a></li>
<li class="header-logged-out-nav-item gl-hidden md:gl-inline-block">
<a class="" href="/explore">Explore</a>
</li>
</ul>
<ul class="gl-list-none gl-p-0 gl-m-0 gl-flex gl-gap-3 gl-items-center gl-justify-end">
<li class="header-logged-out-nav-item">
<a href="/users/sign_in?redirect_to_referer=yes">Sign in</a>
</li>
<li class="header-logged-out-nav-item">
<a class="gl-button btn btn-md btn-confirm !gl-inline-flex" href="/users/sign_up"><span class="gl-button-text">
Get free trial

</span>

</a></li>
</ul>
</nav>
</div>
</header>

<div class="layout-page page-with-super-sidebar">
<aside class="js-super-sidebar super-sidebar super-sidebar-loading" data-command-palette="{&quot;project_files_url&quot;:&quot;/jandugar/m02-bd/-/files/master?format=json&quot;,&quot;project_blob_url&quot;:&quot;/jandugar/m02-bd/-/blob/master&quot;}" data-force-desktop-expanded-sidebar="" data-is-saas="true" data-root-path="/" data-sidebar="{&quot;whats_new_most_recent_release_items_count&quot;:4,&quot;whats_new_version_digest&quot;:&quot;0dc755729105d759eb626954bd82029a9f94aed1c747983d4f27a0d7ade59e57&quot;,&quot;is_logged_in&quot;:false,&quot;context_switcher_links&quot;:[{&quot;title&quot;:&quot;Explore&quot;,&quot;link&quot;:&quot;/explore&quot;,&quot;icon&quot;:&quot;compass&quot;}],&quot;current_menu_items&quot;:[{&quot;id&quot;:&quot;project_overview&quot;,&quot;title&quot;:&quot;m02-bd&quot;,&quot;avatar&quot;:&quot;https://gitlab.com/jandugar/m02-bd/-/avatar&quot;,&quot;entity_id&quot;:14182314,&quot;link&quot;:&quot;/jandugar/m02-bd&quot;,&quot;link_classes&quot;:&quot;shortcuts-project&quot;,&quot;is_active&quot;:true},{&quot;id&quot;:&quot;manage_menu&quot;,&quot;title&quot;:&quot;Manage&quot;,&quot;icon&quot;:&quot;users&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/activity&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;activity&quot;,&quot;title&quot;:&quot;Activity&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/activity&quot;,&quot;link_classes&quot;:&quot;shortcuts-project-activity&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;members&quot;,&quot;title&quot;:&quot;Members&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/project_members&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;labels&quot;,&quot;title&quot;:&quot;Labels&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/labels&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;plan_menu&quot;,&quot;title&quot;:&quot;Plan&quot;,&quot;icon&quot;:&quot;planning&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/issues&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;project_issue_list&quot;,&quot;title&quot;:&quot;Issues&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/issues&quot;,&quot;pill_count_field&quot;:&quot;openIssuesCount&quot;,&quot;link_classes&quot;:&quot;shortcuts-issues has-sub-items&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;boards&quot;,&quot;title&quot;:&quot;Issue boards&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/boards&quot;,&quot;link_classes&quot;:&quot;shortcuts-issue-boards&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;milestones&quot;,&quot;title&quot;:&quot;Milestones&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/milestones&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;project_wiki&quot;,&quot;title&quot;:&quot;Wiki&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/wikis/home&quot;,&quot;link_classes&quot;:&quot;shortcuts-wiki&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;code_menu&quot;,&quot;title&quot;:&quot;Code&quot;,&quot;icon&quot;:&quot;code&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/merge_requests&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;project_merge_request_list&quot;,&quot;title&quot;:&quot;Merge requests&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/merge_requests&quot;,&quot;pill_count_field&quot;:&quot;openMergeRequestsCount&quot;,&quot;link_classes&quot;:&quot;shortcuts-merge_requests&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;files&quot;,&quot;title&quot;:&quot;Repository&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/tree/master&quot;,&quot;link_classes&quot;:&quot;shortcuts-tree&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;branches&quot;,&quot;title&quot;:&quot;Branches&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/branches&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;commits&quot;,&quot;title&quot;:&quot;Commits&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/commits/master?ref_type=heads&quot;,&quot;link_classes&quot;:&quot;shortcuts-commits&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;tags&quot;,&quot;title&quot;:&quot;Tags&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/tags&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;graphs&quot;,&quot;title&quot;:&quot;Repository graph&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/network/master?ref_type=heads&quot;,&quot;link_classes&quot;:&quot;shortcuts-network&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;compare&quot;,&quot;title&quot;:&quot;Compare revisions&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/compare?from=master\u0026to=master&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;project_snippets&quot;,&quot;title&quot;:&quot;Snippets&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/snippets&quot;,&quot;link_classes&quot;:&quot;shortcuts-snippets&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;build_menu&quot;,&quot;title&quot;:&quot;Build&quot;,&quot;icon&quot;:&quot;rocket&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/pipelines&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;pipelines&quot;,&quot;title&quot;:&quot;Pipelines&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/pipelines&quot;,&quot;link_classes&quot;:&quot;shortcuts-pipelines&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;jobs&quot;,&quot;title&quot;:&quot;Jobs&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/jobs&quot;,&quot;link_classes&quot;:&quot;shortcuts-builds&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;pipeline_schedules&quot;,&quot;title&quot;:&quot;Pipeline schedules&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/pipeline_schedules&quot;,&quot;link_classes&quot;:&quot;shortcuts-builds&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;artifacts&quot;,&quot;title&quot;:&quot;Artifacts&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/artifacts&quot;,&quot;link_classes&quot;:&quot;shortcuts-builds&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;deploy_menu&quot;,&quot;title&quot;:&quot;Deploy&quot;,&quot;icon&quot;:&quot;deployments&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/releases&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;releases&quot;,&quot;title&quot;:&quot;Releases&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/releases&quot;,&quot;link_classes&quot;:&quot;shortcuts-deployments-releases&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;packages_registry&quot;,&quot;title&quot;:&quot;Package Registry&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/packages&quot;,&quot;link_classes&quot;:&quot;shortcuts-container-registry&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;container_registry&quot;,&quot;title&quot;:&quot;Container Registry&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/container_registry&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;model_registry&quot;,&quot;title&quot;:&quot;Model registry&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/ml/models&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;operations_menu&quot;,&quot;title&quot;:&quot;Operate&quot;,&quot;icon&quot;:&quot;cloud-pod&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/environments&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;environments&quot;,&quot;title&quot;:&quot;Environments&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/environments&quot;,&quot;link_classes&quot;:&quot;shortcuts-environments&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;infrastructure_registry&quot;,&quot;title&quot;:&quot;Terraform modules&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/terraform_module_registry&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;monitor_menu&quot;,&quot;title&quot;:&quot;Monitor&quot;,&quot;icon&quot;:&quot;monitor&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/incidents&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;incidents&quot;,&quot;title&quot;:&quot;Incidents&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/incidents&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;service_desk&quot;,&quot;title&quot;:&quot;Service Desk&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/issues/service_desk&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false},{&quot;id&quot;:&quot;analyze_menu&quot;,&quot;title&quot;:&quot;Analyze&quot;,&quot;icon&quot;:&quot;chart&quot;,&quot;avatar_shape&quot;:&quot;rect&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/value_stream_analytics&quot;,&quot;is_active&quot;:false,&quot;items&quot;:[{&quot;id&quot;:&quot;cycle_analytics&quot;,&quot;title&quot;:&quot;Value stream analytics&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/value_stream_analytics&quot;,&quot;link_classes&quot;:&quot;shortcuts-project-cycle-analytics&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;contributors&quot;,&quot;title&quot;:&quot;Contributor analytics&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/graphs/master?ref_type=heads&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;ci_cd_analytics&quot;,&quot;title&quot;:&quot;CI/CD analytics&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/pipelines/charts&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;repository_analytics&quot;,&quot;title&quot;:&quot;Repository analytics&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/graphs/master/charts&quot;,&quot;link_classes&quot;:&quot;shortcuts-repository-charts&quot;,&quot;is_active&quot;:false},{&quot;id&quot;:&quot;model_experiments&quot;,&quot;title&quot;:&quot;Model experiments&quot;,&quot;link&quot;:&quot;/jandugar/m02-bd/-/ml/experiments&quot;,&quot;is_active&quot;:false}],&quot;separated&quot;:false}],&quot;current_context_header&quot;:&quot;Project&quot;,&quot;support_path&quot;:&quot;https://about.gitlab.com/get-help/&quot;,&quot;docs_path&quot;:&quot;/help/docs&quot;,&quot;display_whats_new&quot;:true,&quot;show_version_check&quot;:null,&quot;search&quot;:{&quot;search_path&quot;:&quot;/search&quot;,&quot;issues_path&quot;:&quot;/dashboard/issues&quot;,&quot;mr_path&quot;:&quot;/dashboard/merge_requests&quot;,&quot;autocomplete_path&quot;:&quot;/search/autocomplete&quot;,&quot;settings_path&quot;:&quot;/search/settings&quot;,&quot;search_context&quot;:{&quot;project&quot;:{&quot;id&quot;:14182314,&quot;name&quot;:&quot;m02-bd&quot;},&quot;project_metadata&quot;:{&quot;mr_path&quot;:&quot;/jandugar/m02-bd/-/merge_requests&quot;,&quot;issues_path&quot;:&quot;/jandugar/m02-bd/-/issues&quot;},&quot;code_search&quot;:true,&quot;ref&quot;:&quot;master&quot;,&quot;scope&quot;:null,&quot;for_snippets&quot;:null}},&quot;panel_type&quot;:&quot;project&quot;,&quot;shortcut_links&quot;:[{&quot;title&quot;:&quot;Snippets&quot;,&quot;href&quot;:&quot;/explore/snippets&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-snippets&quot;},{&quot;title&quot;:&quot;Groups&quot;,&quot;href&quot;:&quot;/explore/groups&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-groups&quot;},{&quot;title&quot;:&quot;Projects&quot;,&quot;href&quot;:&quot;/explore/projects/starred&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-projects&quot;}],&quot;terms&quot;:&quot;/-/users/terms&quot;}"></aside>

<div class="content-wrapper">
<div class="broadcast-wrapper">




</div>
<div class="alert-wrapper alert-wrapper-top-space gl-flex gl-flex-col gl-gap-3 container-fluid container-limited">



























</div>
<div class="top-bar-fixed container-fluid" data-testid="top-bar">
<div class="top-bar-container gl-flex gl-items-center gl-gap-2">
<div class="gl-grow gl-basis-0 gl-flex gl-items-center gl-justify-start gl-gap-3">
<button class="gl-button btn btn-icon btn-md btn-default btn-default-tertiary js-super-sidebar-toggle-expand super-sidebar-toggle -gl-ml-3" aria-controls="super-sidebar" aria-expanded="false" aria-label="Primary navigation sidebar" type="button"><svg class="s16 gl-icon gl-button-icon " data-testid="sidebar-icon"><use href="/assets/icons-aa2c8ddf99d22b77153ca2bb092a23889c12c597fc8b8de94b0f730eb53513f6.svg#sidebar"></use></svg>

</button>
<script type="application/ld+json">
{"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"Jordi","item":"https://gitlab.com/jandugar"},{"@type":"ListItem","position":2,"name":"m02-bd","item":"https://gitlab.com/jandugar/m02-bd"}]}


</script>
<div data-testid="breadcrumb-links" id="js-vue-page-breadcrumbs-wrapper">
<div data-breadcrumbs-json="[{&quot;text&quot;:&quot;Jordi&quot;,&quot;href&quot;:&quot;/jandugar&quot;,&quot;avatarPath&quot;:null},{&quot;text&quot;:&quot;m02-bd&quot;,&quot;href&quot;:&quot;/jandugar/m02-bd&quot;,&quot;avatarPath&quot;:&quot;https://gitlab.com/jandugar/m02-bd/-/avatar&quot;}]" id="js-vue-page-breadcrumbs"></div>
<div id="js-injected-page-breadcrumbs"></div>
</div>


</div>
<div class="gl-flex-none gl-flex gl-items-center gl-justify-center">
<div id="js-advanced-search-modal"></div>

</div>
<div class="gl-grow gl-basis-0 gl-flex gl-items-center gl-justify-end">
<div id="js-work-item-feedback"></div>


</div>
</div>
</div>

<div class="container-fluid container-limited project-highlight-puc">
<main class="content" id="content-body" itemscope itemtype="http://schema.org/SoftwareSourceCode">
<div class="flash-container flash-container-page sticky" data-testid="flash-container">
<div id="js-global-alerts"></div>
</div>










<header class="project-home-panel js-show-on-project-root gl-mt-5">
<div class="gl-flex gl-justify-between gl-flex-wrap gl-flex-col md:gl-flex-row gl-gap-5">
<div class="home-panel-title-row gl-flex gl-items-center">
<img srcset="https://gitlab.com/jandugar/m02-bd/-/avatar?width=48 1x, https://gitlab.com/jandugar/m02-bd/-/avatar?width=96 2x" alt="m02-bd" class="gl-avatar gl-avatar-s48 gl-self-start gl-shrink-0 gl-mr-4 !gl-rounded-base" height="48" width="48" loading="lazy" itemprop="image" src="https://gitlab.com/jandugar/m02-bd/-/avatar?width=48" />

<h1 class="home-panel-title gl-heading-1 gl-flex gl-items-center gl-flex-wrap gl-gap-3 gl-break-anywhere gl-mb-0" data-testid="project-name-content" itemprop="name">
m02-bd
<button class="has-tooltip gl-border-0 gl-bg-transparent gl-p-0 gl-leading-0 gl-text-inherit visibility-icon gl-inline-flex gl-fill-icon-subtle" data-container="body" data-placement="top" title="Public - The project can be accessed without any authentication." type="button" aria-label="Public - The project can be accessed without any authentication."><svg class="s16 icon" data-testid="earth-icon"><use href="/assets/icons-aa2c8ddf99d22b77153ca2bb092a23889c12c597fc8b8de94b0f730eb53513f6.svg#earth"></use></svg></button>

</h1>
</div>
<div data-can-read-project="true" data-id="14182314" data-is-group="false" data-is-project-archived="false" data-is-project-empty="false" data-is-project-marked-for-deletion="false" data-project-avatar="https://gitlab.com/jandugar/m02-bd/-/avatar" data-project-id="14182314" data-project-name="m02-bd" data-project-visibility-level="public" data-sign-in-path="/users/sign_in?redirect_to_referer=yes" data-star-count="42" data-starred="false" data-starrers-path="/jandugar/m02-bd/-/starrers" id="js-home-panel"></div>
</div>

</header>

<div class="project-page-indicator js-show-on-project-root"></div>
<div class="project-page-layout">
<div class="project-page-layout-sidebar js-show-on-project-root gl-mt-5">
<aside class="project-page-sidebar" data-testid="project-page-sidebar">
<div class="project-page-sidebar-block home-panel-home-desc gl-py-4 gl-border-b gl-border-b-subtle !gl-pt-2">
<h2 class="gl-text-base gl-font-bold gl-leading-reset gl-text-heading gl-m-0 gl-mb-1">Project information</h2>
<div class="home-panel-description gl-break-words">
<div class="home-panel-description-markdown read-more-container" data-read-more-height="320" itemprop="description">
<div class="read-more-content read-more-content--has-scrim">
<p data-sourcepos="1:1-1:133" dir="auto">Curs corresponent al mòdul M02-Bases de dades, cicle de Desenvolupament d'aplicacions web.   Institut Escola del Treball (Barcelona)</p>
</div>
<div class="js-read-more-trigger gl-hidden gl-w-full gl-h-8 gl-absolute gl-bottom-0 gl-z-2 gl-bg-default">
<button aria-label="Expand project information" type="button" class="gl-button btn btn-md btn-link "><span class="gl-button-text">
<svg class="s14" data-testid="chevron-down-icon"><use href="/assets/icons-aa2c8ddf99d22b77153ca2bb092a23889c12c597fc8b8de94b0f730eb53513f6.svg#chevron-down"></use></svg>
Read more

</span>

</button></div>
</div>
</div>
<div class="gl-mb-2">
<div class="progress repository-languages-bar js-show-on-project-root"><div class="progress-bar has-tooltip" style="width: 100.0%; background-color:#89e051" data-html="true" title="&lt;span class=&quot;repository-language-bar-tooltip-language&quot;&gt;Shell&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;repository-language-bar-tooltip-share&quot;&gt;100.0%&lt;/span&gt;"></div></div>
</div>
</div>
<div class="project-page-sidebar-block gl-py-4 gl-border-b gl-border-b-subtle">
<nav class="project-stats">
<ul class="nav gl-gap-y-2 gl-gap-x-5">
<li class="nav-item">
<a class="nav-link stat-link !gl-px-0 !gl-pb-2" href="/jandugar/m02-bd/-/commits/master"><svg class="s16 icon gl-mr-3 gl-text-subtle" data-testid="commit-icon"><use href="/assets/icons-aa2c8ddf99d22b77153ca2bb092a23889c12c597fc8b8de94b0f730eb53513f6.svg#commit"></use></svg><strong class="project-stat-value">395</strong> Commits</a>
</li>
<li class="nav-item">
<a class="nav-link stat-link !gl-px-0 !gl-pb-2" href="/jandugar/m02-bd/-/branches"><svg class="s16 icon gl-mr-3 gl-text-subtle" data-testid="branch-icon"><use href="/assets/icons-aa2c8ddf99d22b77153ca2bb092a23889c12c597fc8b8de94b0f730eb53513f6.svg#branch"></use></svg><strong class="project-stat-value">1</strong> Branch</a>
</li>
<li class="nav-item">
<a class="nav-link stat-link !gl-px-0 !gl-pb-2" href="/jandugar/m02-bd/-/tags"><svg class="s16 icon gl-mr-3 gl-text-subtle" data-testid="label-icon"><use href="/assets/icons-aa2c8ddf99d22b77153ca2bb092a23889c12c597fc8b8de94b0f730eb53513f6.svg#label"></use></svg><strong class="project-stat-value">0</strong> Tags</a>
</li>
</ul>

</nav>
</div>
<div class="project-page-sidebar-block gl-py-4 gl-border-b gl-border-b-subtle">
<div class="project-buttons gl-mb-2 js-show-on-project-root" data-testid="project-buttons">
<ul class="nav gl-gap-y-2 gl-gap-x-5">
<li class="nav-item">
<a class="nav-link stat-link !gl-px-0 !gl-pb-2 btn-default" href="/jandugar/m02-bd/-/blob/master/README.md"><svg class="s16 icon gl-mr-3 gl-text-subtle" data-testid="doc-text-icon"><use href="/assets/icons-aa2c8ddf99d22b77153ca2bb092a23889c12c597fc8b8de94b0f730eb53513f6.svg#doc-text"></use></svg>README</a>
</li>
</ul>

</div>
</div>

<div class="project-page-sidebar-block gl-py-4">
<p class="gl-font-bold gl-text-strong gl-m-0 gl-mb-1">Created on</p>
<span>September 06, 2019</span>
</div>
</aside>

</div>
<div class="project-page-layout-content">
<div class="project-show-files">
<div class="tree-holder clearfix js-per-page gl-mt-5" data-blame-per-page="1000" id="tree-holder">
<div data-breadcrumbs-can-collaborate="false" data-breadcrumbs-can-edit-tree="false" data-breadcrumbs-can-push-code="false" data-breadcrumbs-can-push-to-branch="false" data-breadcrumbs-new-blob-path="/jandugar/m02-bd/-/new/master" data-breadcrumbs-new-branch-path="/jandugar/m02-bd/-/branches/new" data-breadcrumbs-new-dir-path="/jandugar/m02-bd/-/create_dir/master" data-breadcrumbs-new-tag-path="/jandugar/m02-bd/-/tags/new" data-breadcrumbs-upload-path="/jandugar/m02-bd/-/create/master" data-download-links="[{&quot;text&quot;:&quot;zip&quot;,&quot;path&quot;:&quot;/jandugar/m02-bd/-/archive/master/m02-bd-master.zip&quot;},{&quot;text&quot;:&quot;tar.gz&quot;,&quot;path&quot;:&quot;/jandugar/m02-bd/-/archive/master/m02-bd-master.tar.gz&quot;},{&quot;text&quot;:&quot;tar.bz2&quot;,&quot;path&quot;:&quot;/jandugar/m02-bd/-/archive/master/m02-bd-master.tar.bz2&quot;},{&quot;text&quot;:&quot;tar&quot;,&quot;path&quot;:&quot;/jandugar/m02-bd/-/archive/master/m02-bd-master.tar&quot;}]" data-escaped-ref="master" data-http-url="https://gitlab.com/jandugar/m02-bd.git" data-kerberos-url="" data-new-workspace-path="/-/remote_development/workspaces/new" data-project-id="14182314" data-project-path="jandugar/m02-bd" data-project-root-path="/jandugar/m02-bd" data-ref="master" data-ref-type="heads" data-ssh-url="git@gitlab.com:jandugar/m02-bd.git" data-web-ide-button-default-branch="master" data-web-ide-button-options="{&quot;project_path&quot;:&quot;jandugar/m02-bd&quot;,&quot;ref&quot;:&quot;master&quot;,&quot;is_fork&quot;:false,&quot;needs_to_fork&quot;:true,&quot;gitpod_enabled&quot;:false,&quot;is_blob&quot;:false,&quot;show_edit_button&quot;:false,&quot;show_web_ide_button&quot;:false,&quot;show_gitpod_button&quot;:false,&quot;show_pipeline_editor_button&quot;:false,&quot;web_ide_url&quot;:&quot;/-/ide/project/jandugar/m02-bd/edit/master&quot;,&quot;edit_url&quot;:&quot;&quot;,&quot;pipeline_editor_url&quot;:&quot;/jandugar/m02-bd/-/ci/editor?branch_name=master&quot;,&quot;gitpod_url&quot;:&quot;https://gitpod.io/#https://gitlab.com/jandugar/m02-bd/-/tree/master/&quot;,&quot;user_preferences_gitpod_path&quot;:&quot;/-/profile/preferences#user_gitpod_enabled&quot;,&quot;user_profile_enable_gitpod_path&quot;:&quot;/-/user_settings/profile?user%5Bgitpod_enabled%5D=true&quot;,&quot;new_workspace_path&quot;:&quot;/-/remote_development/workspaces/new&quot;,&quot;project_id&quot;:14182314,&quot;fork_path&quot;:&quot;/jandugar/m02-bd/-/forks/new&quot;,&quot;fork_modal_id&quot;:null}" data-xcode-url="" id="js-repository-blob-header-app"></div>
<div class="info-well project-last-commit gl-flex-col gl-mt-5">
<div class="gl-flex gl-items-center gl-justify-center gl-m-auto gl-min-h-9 lg:gl-min-h-[4.5rem]" data-history-link="/jandugar/m02-bd/-/commits/master" data-ref-type="heads" id="js-last-commit">
<div class="gl-spinner-container" role="status"><span aria-hidden class="gl-spinner gl-spinner-md gl-spinner-dark !gl-align-text-bottom"></span><span class="gl-sr-only !gl-absolute">Loading</span>
</div>
</div>
</div>
<div data-escaped-ref="master" data-explain-code-available="false" data-full-name="Jordi / m02-bd" data-path-locks-available="false" data-path-locks-toggle="/jandugar/m02-bd/path_locks/toggle" data-project-path="jandugar/m02-bd" data-project-short-path="m02-bd" data-ref="master" data-ref-type="heads" data-resource-id="gid://gitlab/Project/14182314" data-user-id="" id="js-tree-list"></div>
</div>

</div>
</div>
</div>

</main>
</div>


</div>
</div>


<script nonce="m5dCD9LRtdye1GLi8xJXHg==">
//<![CDATA[
if ('loading' in HTMLImageElement.prototype) {
  document.querySelectorAll('img.lazy').forEach(img => {
    img.loading = 'lazy';
    let imgUrl = img.dataset.src;
    // Only adding width + height for avatars for now
    if (imgUrl.indexOf('/avatar/') > -1 && imgUrl.indexOf('?') === -1) {
      const targetWidth = img.getAttribute('width') || img.width;
      imgUrl += `?width=${targetWidth}`;
    }
    img.src = imgUrl;
    img.removeAttribute('data-src');
    img.classList.remove('lazy');
    img.classList.add('js-lazy-loaded');
    img.dataset.testid = 'js-lazy-loaded-content';
  });
}

//]]>
</script>
<script nonce="m5dCD9LRtdye1GLi8xJXHg==">
//<![CDATA[
gl = window.gl || {};
gl.experiments = {};


//]]>
</script>

</body>
</html>

