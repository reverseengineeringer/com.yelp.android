.class Lcom/yelp/android/ui/widgets/w;
.super Ljava/lang/Object;
.source "RecipientBoxView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/RecipientBoxView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/w;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/w;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/w;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Lcom/yelp/android/ui/widgets/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/widgets/z;->a(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    return-void
.end method
