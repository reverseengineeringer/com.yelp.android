.class public Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;
.super Landroid/widget/RelativeLayout;
.source "LabeledField.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mutatebiz/ah;
.implements Lcom/yelp/android/ui/activities/mutatebiz/y;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0f0191

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 43
    const/4 v1, 0x4

    const v2, 0x7f030118

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/dj;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 45
    const v0, 0x7f0c03ee

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/Field;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    .line 46
    const v0, 0x7f0c03ec

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->b:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setListener(Lcom/yelp/android/ui/activities/mutatebiz/y;)V

    .line 48
    sget-object v0, Lcom/yelp/android/b;->PanelLabelValue:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    sget-object v0, Lcom/yelp/android/b;->AddBusinessField:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setAttributes(Landroid/content/res/TypedArray;)V

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Landroid/net/Uri;)V

    .line 111
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 66
    return-void
.end method

.method public varargs a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V

    .line 71
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->b:Landroid/widget/TextView;

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    return-void

    .line 120
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getAttachment()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getAttachment()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCharSequenceData()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getParcelableArrayData()[Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getParcelableArrayListData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getParcelableArrayListData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getSerializable()Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/LabeledField;->a:Lcom/yelp/android/ui/activities/mutatebiz/Field;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getSerializable()Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method
