.class public Lcom/yelp/android/ui/activities/settings/PreferenceView;
.super Landroid/widget/RelativeLayout;
.source "PreferenceView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I

.field private static final d:[I


# instance fields
.field protected final b:Landroid/widget/AutoCompleteTextView;

.field protected final c:Landroid/view/ViewStub;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private g:Z

.field private h:Lcom/yelp/android/ui/widgets/j;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:Z

.field private final l:Z

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->a:[I

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009f

    aput v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->d:[I

    return-void

    .line 33
    :array_0
    .array-data 4
        0x10100a0
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f010098

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 56
    const v1, 0x7f030135

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/dj;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 58
    const v0, 0x7f0c0421

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->e:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0c0422

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->f:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0c0420

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    .line 61
    const v0, 0x7f0c01ca

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    .line 62
    sget-object v0, Lcom/yelp/android/b;->PreferenceView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 66
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setEditText(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setIcon(I)V

    .line 68
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->j:I

    .line 69
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->i:Ljava/lang/String;

    .line 70
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->k:Z

    .line 72
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Z

    .line 74
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->m:I

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->selectAll()V

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    const/4 v0, 0x0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->k:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Z

    return v0
.end method

.method public getDependency()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->m:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->j:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->g:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->isChecked()Z

    move-result v1

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->h:Lcom/yelp/android/ui/widgets/j;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 197
    :goto_0
    if-eqz v1, :cond_3

    .line 198
    sget-object v2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->a:[I

    array-length v2, v2

    add-int/2addr p1, v2

    .line 202
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 203
    if-eqz v1, :cond_4

    .line 204
    sget-object v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->a:[I

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->mergeDrawableStates([I[I)[I

    .line 208
    :cond_1
    :goto_2
    return-object v2

    .line 196
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_3
    if-eqz v0, :cond_0

    .line 200
    sget-object v2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->d:[I

    array-length v2, v2

    add-int/2addr p1, v2

    goto :goto_1

    .line 205
    :cond_4
    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->d:[I

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->mergeDrawableStates([I[I)[I

    goto :goto_2
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->toggle()V

    .line 219
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->g:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 155
    :goto_0
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->g:Z

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->refreshDrawableState()V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->h:Lcom/yelp/android/ui/widgets/j;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->h:Lcom/yelp/android/ui/widgets/j;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/widgets/j;->onCheckedChanged(Landroid/view/View;)V

    .line 162
    :cond_0
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEditText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 3

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "layout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "drawable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    const v1, 0x7f030164

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnCheckChangedListener(Lcom/yelp/android/ui/widgets/j;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->h:Lcom/yelp/android/ui/widgets/j;

    .line 191
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    aput v2, v0, v3

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setChecked(Z)V

    .line 187
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
