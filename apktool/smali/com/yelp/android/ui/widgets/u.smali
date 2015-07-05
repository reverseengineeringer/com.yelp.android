.class final Lcom/yelp/android/ui/widgets/u;
.super Ljava/lang/Object;
.source "QuantityDropDownView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/widgets/QuantityDropDownView;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/u;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    .line 213
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/u;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setQuantity(I)V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/u;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/u;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->requestFocus()Z

    .line 220
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/u;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setQuantity(I)V

    .line 225
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/u;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/u;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->requestFocus()Z

    .line 230
    return-void
.end method
