.class Lcom/yelp/android/ui/panels/businesspage/c$4;
.super Ljava/lang/Object;
.source "PanelMoreInfoHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/businesspage/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesspage/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesspage/c;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/c$4;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c$4;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Lcom/yelp/android/ui/panels/businesspage/c;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/k;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/yelp/android/analytics/g$a;

    invoke-direct {v1}, Lcom/yelp/android/analytics/g$a;-><init>()V

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->MoreInfoPageCall:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v2}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    const-string/jumbo v2, "source"

    const-string/jumbo v3, "button"

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    const-string/jumbo v2, "scheme"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/c$4;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/businesspage/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yelp/android/analytics/h;->a(Landroid/content/Context;Lcom/yelp/android/analytics/g$a;)V

    .line 263
    invoke-virtual {v1}, Lcom/yelp/android/analytics/g$a;->a()Lcom/yelp/android/analytics/g;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/b;)V

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/c$4;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/businesspage/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c$4;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07018d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/c$4;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/businesspage/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07029d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c$4;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0
.end method
