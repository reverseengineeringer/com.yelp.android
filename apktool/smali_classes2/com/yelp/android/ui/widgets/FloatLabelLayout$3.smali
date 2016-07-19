.class Lcom/yelp/android/ui/widgets/FloatLabelLayout$3;
.super Landroid/support/v4/view/be;
.source "FloatLabelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c(Z)V
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
    .line 270
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout$3;->a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    invoke-direct {p0}, Landroid/support/v4/view/be;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout$3;->a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout$3;->a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout$3;->a:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 275
    return-void
.end method
