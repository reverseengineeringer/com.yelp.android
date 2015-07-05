.class Lcom/yelp/android/ui/widgets/v;
.super Ljava/lang/Object;
.source "RecipientBoxView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/RecipientBoxView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/v;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

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

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/v;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/v;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Lcom/yelp/android/ui/widgets/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/z;->b()V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/v;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->a(Landroid/view/View;)V

    .line 60
    :goto_0
    return v2

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/v;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Z)Z

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/v;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V

    goto :goto_0
.end method
