.class Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$1;
.super Ljava/lang/Object;
.source "ActivityLocalIssue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/serializable/LocalIssueSponsor;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$1;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$1;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/serializable/LocalIssue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->i()Lcom/yelp/android/serializable/LocalIssueSponsor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssueSponsor;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 339
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LocalIssueSponsorClicked:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$1;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->b(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 341
    iget-object v7, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$1;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$1;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    const-string/jumbo v2, ""

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->startActivity(Landroid/content/Intent;)V

    .line 350
    return-void
.end method
