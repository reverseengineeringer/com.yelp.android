.class Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;
.super Ljava/lang/Object;
.source "ConsumerAlertPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a(Lcom/yelp/android/serializable/YelpBusiness;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->b(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/aj;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/util/aj;->a(Z)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->c(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c(Z)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->d(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessSpamAlertDismiss:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->e(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessSpamAlertEvidence:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FULL_SCREEN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x7f0f0481
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
