.class Lcom/yelp/android/ui/activities/profile/d$b$4;
.super Ljava/lang/Object;
.source "ReviewTipAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/d$b;->a(Lcom/yelp/android/serializable/Tip;Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/util/t;Lcom/yelp/android/ui/activities/profile/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/d$c;

.field final synthetic b:Lcom/yelp/android/serializable/Tip;

.field final synthetic c:Lcom/yelp/android/ui/activities/profile/d$b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/d$b;Lcom/yelp/android/ui/activities/profile/d$c;Lcom/yelp/android/serializable/Tip;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/d$b$4;->c:Lcom/yelp/android/ui/activities/profile/d$b;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/profile/d$b$4;->a:Lcom/yelp/android/ui/activities/profile/d$c;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/d$b$4;->b:Lcom/yelp/android/serializable/Tip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 324
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b$4;->a:Lcom/yelp/android/ui/activities/profile/d$c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/d$b$4;->b:Lcom/yelp/android/serializable/Tip;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/profile/d$c;->a(Lcom/yelp/android/serializable/Tip;)V

    .line 334
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b$4;->c:Lcom/yelp/android/ui/activities/profile/d$b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/d$b;->a(Lcom/yelp/android/ui/activities/profile/d$b;)Lcom/yelp/android/ui/widgets/SpannedImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->toggle()V

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07039c

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
