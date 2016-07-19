.class Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$1;
.super Ljava/lang/Object;
.source "UserEnterAddressView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->a(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$1;->b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$1;->a:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$1;->a:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;->a()V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
