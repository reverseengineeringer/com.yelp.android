.class Lcom/yelp/android/ui/widgets/EditTextAndClearButton$1;
.super Ljava/lang/Object;
.source "EditTextAndClearButton.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton$1;->a:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton$1;->a:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
