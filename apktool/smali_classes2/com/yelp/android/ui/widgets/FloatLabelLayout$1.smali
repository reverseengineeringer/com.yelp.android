.class Lcom/yelp/android/ui/widgets/FloatLabelLayout$1;
.super Ljava/lang/Object;
.source "FloatLabelLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/FloatLabelLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout$1;->a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout$1;->a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a(Lcom/yelp/android/ui/widgets/FloatLabelLayout;Z)V

    .line 186
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
