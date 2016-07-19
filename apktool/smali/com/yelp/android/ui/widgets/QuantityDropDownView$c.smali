.class final Lcom/yelp/android/ui/widgets/QuantityDropDownView$c;
.super Ljava/lang/Object;
.source "QuantityDropDownView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/QuantityDropDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/widgets/QuantityDropDownView;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$c;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    .line 221
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
    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$c;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setQuantity(I)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$c;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$c;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->requestFocus()Z

    .line 228
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
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$c;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setQuantity(I)V

    .line 233
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
    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$c;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iget-object v0, v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/QuantityDropDownView$c;->a:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->requestFocus()Z

    .line 238
    return-void
.end method
