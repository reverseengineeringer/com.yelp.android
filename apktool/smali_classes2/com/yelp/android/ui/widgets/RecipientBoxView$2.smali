.class Lcom/yelp/android/ui/widgets/RecipientBoxView$2;
.super Ljava/lang/Object;
.source "RecipientBoxView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$2;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$2;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView$2;->a:Lcom/yelp/android/ui/widgets/RecipientBoxView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Lcom/yelp/android/ui/widgets/RecipientBoxView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView$a;->a(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method
