.class Lcom/yelp/android/ui/activities/businesspage/d$8;
.super Ljava/lang/Object;
.source "BusinessNotificationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/d;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/d$8;->b:Lcom/yelp/android/ui/activities/businesspage/d;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/d$8;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d$8;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/d$8;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 309
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ConfirmEmailBannerTap:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "biz_page"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    return-void
.end method
