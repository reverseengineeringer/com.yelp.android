.class Lcom/yelp/android/ui/widgets/RecipientBoxView$1;
.super Ljava/lang/Object;
.source "RecipientBoxView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/RecipientBoxView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/RecipientBoxView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$1;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$1;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$1;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Lcom/yelp/android/ui/widgets/RecipientBoxView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView$a;->b()V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$1;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->a(Landroid/view/View;)V

    .line 62
    :goto_0
    return v2

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$1;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Z)Z

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$1;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V

    goto :goto_0
.end method
