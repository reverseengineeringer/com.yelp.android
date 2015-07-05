.class Lcom/yelp/android/ui/widgets/h;
.super Ljava/lang/Object;
.source "EditTextAndClearButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/h;->a:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/h;->a:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/h;->a:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 109
    return-void
.end method
