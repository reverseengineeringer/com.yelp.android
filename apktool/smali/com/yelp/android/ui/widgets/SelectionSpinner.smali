.class public Lcom/yelp/android/ui/widgets/SelectionSpinner;
.super Landroid/widget/Spinner;
.source "SelectionSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 42
    return-void
.end method

.method public setSelection(I)V
    .locals 6

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 32
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 34
    :goto_0
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 38
    :cond_0
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
