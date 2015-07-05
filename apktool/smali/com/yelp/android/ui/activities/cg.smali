.class Lcom/yelp/android/ui/activities/cg;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cg;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 300
    if-nez p2, :cond_0

    invoke-static {p3}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cg;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
