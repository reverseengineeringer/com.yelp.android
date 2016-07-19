.class public Lcom/yelp/android/ui/activities/settings/PreferenceView;
.super Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;
.source "PreferenceView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I

.field private static final i:[I


# instance fields
.field protected final b:Landroid/widget/AutoCompleteTextView;

.field protected final c:Landroid/view/ViewStub;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/view/ViewStub;

.field private m:Z

.field private n:Lcom/yelp/android/ui/widgets/c;

.field private o:Ljava/lang/String;

.field private final p:I

.field private final q:Z

.field private final r:Z

.field private s:Lcom/yelp/android/ui/activities/settings/a;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->a:[I

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009f

    aput v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->i:[I

    return-void

    .line 37
    :array_0
    .array-data 4
        0x10100a0
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f0100ce

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    new-instance v0, Lcom/yelp/android/ui/activities/settings/PreferenceView$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView$1;-><init>(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->u:Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->t:Ljava/util/List;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 61
    const v1, 0x7f030198

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/ay;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 63
    const v0, 0x7f0f0506

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->j:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0f0509

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->k:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0f0505

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    .line 66
    const v0, 0x7f0f0507

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Landroid/view/ViewStub;

    .line 67
    const v0, 0x7f0f01fa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    .line 69
    sget-object v0, Lcom/yelp/android/b$a;->PreferenceView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setEditText(Ljava/lang/CharSequence;)V

    .line 74
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setIcon(I)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->p:I

    .line 77
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->o:Ljava/lang/String;

    .line 78
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->q:Z

    .line 80
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->r:Z

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->t:Ljava/util/List;

    return-object v0
.end method

.method private setIcon(I)V
    .locals 5

    .prologue
    const v4, 0x7f0301d1

    const/16 v3, 0x8

    .line 142
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "layout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "drawable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Landroid/view/ViewStub;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 154
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->selectAll()V

    .line 180
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    const/4 v0, 0x0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->q:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->r:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->p:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewBuilder()Lcom/yelp/android/ui/activities/settings/a;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->s:Lcom/yelp/android/ui/activities/settings/a;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->m:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->isChecked()Z

    move-result v1

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->n:Lcom/yelp/android/ui/widgets/c;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 233
    :goto_0
    if-eqz v1, :cond_3

    .line 234
    sget-object v2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->a:[I

    array-length v2, v2

    add-int/2addr p1, v2

    .line 238
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 239
    if-eqz v1, :cond_4

    .line 240
    sget-object v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->a:[I

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->mergeDrawableStates([I[I)[I

    .line 244
    :cond_1
    :goto_2
    return-object v2

    .line 232
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_3
    if-eqz v0, :cond_0

    .line 236
    sget-object v2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->i:[I

    array-length v2, v2

    add-int/2addr p1, v2

    goto :goto_1

    .line 241
    :cond_4
    if-eqz v0, :cond_1

    .line 242
    sget-object v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->i:[I

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->mergeDrawableStates([I[I)[I

    goto :goto_2
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->toggle()V

    .line 265
    invoke-super {p0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->m:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 191
    :goto_0
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->m:Z

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->refreshDrawableState()V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->n:Lcom/yelp/android/ui/widgets/c;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->n:Lcom/yelp/android/ui/widgets/c;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/widgets/c;->onCheckedChanged(Landroid/view/View;)V

    .line 198
    :cond_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEditText(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 169
    const v0, 0x7f0f0504

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->o:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setOnCheckChangedListener(Lcom/yelp/android/ui/widgets/c;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->n:Lcom/yelp/android/ui/widgets/c;

    .line 227
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->u:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutResource()I

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->l:Landroid/view/ViewStub;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 118
    :cond_0
    const v0, 0x7f0f0504

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setViewBuilder(Lcom/yelp/android/ui/activities/settings/a;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->s:Lcom/yelp/android/ui/activities/settings/a;

    .line 129
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setChecked(Z)V

    .line 223
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
