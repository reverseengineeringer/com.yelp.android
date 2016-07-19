.class public Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "AddCaptionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$a;,
        Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;,
        Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$c;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private c:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;

.field private d:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$a;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Landroid/widget/MultiAutoCompleteTextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ToggleButton;

.field private q:Landroid/widget/ToggleButton;

.field private r:Lcom/yelp/android/ui/util/t;

.field private final s:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a:[I

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->b:[I

    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x7f07019b
        0x7f07019d
        0x7f07019f
        0x7f0701a0
        0x7f0701a1
        0x7f0701a2
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x7f07019c
        0x7f07019e
        0x7f0701a0
        0x7f0701a1
        0x7f0701a2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 316
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$5;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 420
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;-><init>()V

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v2, "media_path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "is_video_upload"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string/jumbo v2, "is_edit"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    const-string/jumbo v2, "caption_text"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 122
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;-><init>()V

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v2, "media_path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v2, "is_video_upload"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    const-string/jumbo v2, "is_edit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 109
    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 310
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->p:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->q:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/p;->a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 314
    return-void
.end method

.method private a(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->d:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$a;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$a;->a(II)V

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/util/t;->a(Ljava/lang/String;)I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    if-nez p1, :cond_1

    if-ne p2, v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->o:Landroid/widget/TextView;

    const v1, 0x7f070641

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    if-nez p1, :cond_2

    .line 394
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->o:Landroid/widget/TextView;

    const v1, 0x7f07063e

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    div-int/lit16 v3, p2, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 398
    :cond_2
    if-ne p2, v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->o:Landroid/widget/TextView;

    const v1, 0x7f070643

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    sub-int v3, p2, p1

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->o:Landroid/widget/TextView;

    const v1, 0x7f070640

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit16 v3, p1, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    div-int/lit16 v3, p2, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 373
    packed-switch p1, :pswitch_data_0

    .line 382
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 375
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 376
    invoke-static {p3}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 377
    invoke-static {p3}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 378
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a(II)V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x42d
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 128
    check-cast p1, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->setHasOptionsMenu(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->e:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "media_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->i:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_video_upload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->f:Z

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_edit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->g:Z

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->r:Lcom/yelp/android/ui/util/t;

    .line 143
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->g:Z

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$a;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->d:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$a;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->f:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/util/t;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->j:I

    .line 150
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 293
    const v0, 0x7f10000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 294
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0704a7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 295
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x2ee0

    const/16 v1, 0x8

    const/4 v7, 0x0

    .line 155
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->g:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0300c9

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    .line 160
    :goto_0
    const v0, 0x7f0f0303

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$c;

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$c;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->g:Z

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "caption_text"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_1
    const v0, 0x7f0f0117

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0024

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 177
    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v5, Lcom/yelp/android/ui/util/al;

    invoke-direct {v5, v0, v2}, Lcom/yelp/android/ui/util/al;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    const v0, 0x7f0f0305

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->f:Z

    if-eqz v0, :cond_4

    move v0, v7

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    new-instance v8, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$1;

    invoke-direct {v8, p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$1;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    .line 190
    const v0, 0x7f0f0304

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->l:Landroid/widget/ImageView;

    .line 193
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->g:Z

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->r:Lcom/yelp/android/ui/util/t;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "media_path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 268
    :cond_0
    :goto_3
    return-object v6

    .line 155
    :cond_1
    const v0, 0x7f0300c6

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    .line 165
    :cond_2
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->f:Z

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v2, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->b:[I

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    sget-object v5, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->b:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v2, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a:[I

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    sget-object v5, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 178
    goto :goto_2

    .line 198
    :cond_5
    const v0, 0x7f0f0113

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v0, 0x7f0f0308

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->m:Landroid/view/View;

    .line 201
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->f:Z

    if-eqz v0, :cond_6

    .line 202
    const v0, 0x7f0f0307

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    const v0, 0x7f0f0306

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 207
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    const v0, 0x7f0f030a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->n:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f0f030b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->o:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f07060a

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->o:Landroid/widget/TextView;

    const v1, 0x7f070641

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->m:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$2;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :goto_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->r:Lcom/yelp/android/ui/util/t;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "media_path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/yelp/android/ui/util/u$a;->a(II)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 264
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->j:I

    if-le v0, v9, :cond_0

    .line 265
    invoke-direct {p0, v7, v9}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a(II)V

    goto/16 :goto_3

    .line 230
    :cond_6
    const v0, 0x7f0f01f7

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->p:Landroid/widget/ToggleButton;

    .line 231
    const v0, 0x7f0f01f6

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->q:Landroid/widget/ToggleButton;

    .line 232
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->p:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->q:Landroid/widget/ToggleButton;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/p;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/User;ZLandroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->p:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$3;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->q:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$4;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method public onDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDetach()V

    .line 286
    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$b;

    .line 287
    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->d:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment$a;

    .line 288
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a()V

    .line 302
    const/4 v0, 0x1

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0607
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/view/View;)V

    .line 281
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->b(Landroid/view/View;)V

    .line 275
    return-void
.end method
