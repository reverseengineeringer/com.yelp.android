.class Lcom/yelp/android/ui/widgets/QuantityDropDownView$1;
.super Ljava/lang/Object;
.source "QuantityDropDownView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/QuantityDropDownView;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$1;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$1;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$1;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$1;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a(Lcom/yelp/android/ui/widgets/QuantityDropDownView;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$1;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$1;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$1;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method
