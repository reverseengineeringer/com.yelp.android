.class Lcom/yelp/android/ui/activities/ActivityLogin$5;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityLogin;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$5;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    if-nez p2, :cond_0

    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$5;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Lcom/yelp/android/ui/activities/ActivityLogin;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$5;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->b(Lcom/yelp/android/ui/activities/ActivityLogin;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 455
    :cond_0
    return-void
.end method
