.class Lcom/yelp/android/ui/panels/businesspage/a;
.super Ljava/lang/Object;
.source "ConsumerAlertPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/a;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->b(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/bs;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/bs;->a(Z)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->c(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c(Z)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->d(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/av/a;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessSpamAlertDismiss:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/a;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->e(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/a;->b:Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070262

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessSpamAlertEvidence:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    sget-object v7, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FULL_SCREEN:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x7f0c03a2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
