.class Lcom/yelp/android/ui/activities/ek;
.super Ljava/lang/Object;
.source "CheckInDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ek;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 136
    if-nez p2, :cond_0

    invoke-static {p3}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
