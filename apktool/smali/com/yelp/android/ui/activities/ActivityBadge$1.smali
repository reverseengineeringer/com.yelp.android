.class Lcom/yelp/android/ui/activities/ActivityBadge$1;
.super Ljava/lang/Object;
.source "ActivityBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBadge;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBadge;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 187
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->e(Z)V

    .line 189
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityBadge;->b(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->f(Z)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/ActivityBadge;->b(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/p;->a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Lcom/yelp/android/ui/activities/ActivityBadge;Ljava/util/List;)Ljava/util/List;

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->c(Lcom/yelp/android/ui/activities/ActivityBadge;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->d(Lcom/yelp/android/ui/activities/ActivityBadge;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityBadge;->c(Lcom/yelp/android/ui/activities/ActivityBadge;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/p;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/User;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    sget-object v3, Lcom/yelp/android/services/ShareService$ShareObjectType;->BADGE:Lcom/yelp/android/services/ShareService$ShareObjectType;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "extra.badge"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/ActivityBadge;->c(Lcom/yelp/android/ui/activities/ActivityBadge;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-virtual {v5}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "extra.check_in"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v0, v4, v5}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->finish()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge$1;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->finish()V

    goto :goto_0
.end method
