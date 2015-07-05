.class public Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "AddCaptionFragment.java"


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private c:Lcom/yelp/android/ui/activities/addphoto/g;

.field private d:Ljava/lang/String;

.field private e:Z

.field private g:Z

.field private h:Landroid/widget/MultiAutoCompleteTextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ToggleButton;

.field private l:Landroid/widget/ToggleButton;

.field private final m:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a:[I

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->b:[I

    return-void

    .line 48
    :array_0
    .array-data 4
        0x7f07046c
        0x7f07046d
        0x7f07046e
        0x7f07046f
        0x7f070470
        0x7f070471
        0x7f070472
        0x7f070473
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x7f07046d
        0x7f07046e
        0x7f070470
        0x7f070471
        0x7f070472
        0x7f070473
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 232
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/addphoto/f;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->m:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 286
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;-><init>()V

    .line 100
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v2, "media_path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v2, "is_video_upload"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string/jumbo v2, "is_edit"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string/jumbo v2, "caption_text"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;-><init>()V

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, "media_path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v2, "is_video_upload"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    const-string/jumbo v2, "is_edit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Lcom/yelp/android/ui/activities/addphoto/g;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c:Lcom/yelp/android/ui/activities/addphoto/g;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cr;->b(Landroid/view/View;)V

    .line 227
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->l:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/z;->a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c:Lcom/yelp/android/ui/activities/addphoto/g;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/addphoto/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 230
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    check-cast p1, Lcom/yelp/android/ui/activities/addphoto/g;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c:Lcom/yelp/android/ui/activities/addphoto/g;

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->setHasOptionsMenu(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->d:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_video_upload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->e:Z

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_edit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->g:Z

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 210
    const v0, 0x7f10000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    const v0, 0x7f0c04fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f070490

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 212
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 128
    const v0, 0x7f0300ad

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 129
    const v0, 0x7f0c02ac

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v4, Lcom/yelp/android/ui/activities/addphoto/h;

    invoke-direct {v4, p0, v7}, Lcom/yelp/android/ui/activities/addphoto/h;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;Lcom/yelp/android/ui/activities/addphoto/c;)V

    invoke-virtual {v0, v4}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->m:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->g:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "caption_text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    const v0, 0x7f0c00cb

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 148
    iget-object v5, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v6, Lcom/yelp/android/ui/util/ce;

    invoke-direct {v6, v0, v4}, Lcom/yelp/android/ui/util/ce;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v5, v6}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    const v0, 0x7f0c02ab

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->e:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const v0, 0x7f0c01c2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->j:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->j:Landroid/view/View;

    iget-boolean v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->e:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->g:Z

    if-eqz v4, :cond_5

    :cond_0
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const v0, 0x7f0c01c7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/ToggleButton;

    .line 155
    const v0, 0x7f0c01c6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->l:Landroid/widget/ToggleButton;

    .line 156
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->l:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, v7, v2, v4}, Lcom/yelp/android/util/z;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Landroid/content/SharedPreferences;Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->k:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/addphoto/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/addphoto/c;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->l:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/addphoto/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/addphoto/d;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    const v0, 0x7f0c00c6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->i:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/addphoto/e;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/addphoto/e;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 187
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/j;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "media_path"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/bumptech/glide/d;->a(II)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 191
    return-object v3

    .line 134
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->e:Z

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v4, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->b:[I

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    sget-object v6, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->b:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/MultiAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v4, "ActivityAddBusinessPhoto:prefs"

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v4, "add photo ever loaded"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v4, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a:[I

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    sget-object v6, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/MultiAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    const v4, 0x7f07046c

    invoke-virtual {v0, v4}, Landroid/widget/MultiAutoCompleteTextView;->setHint(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 149
    goto/16 :goto_1

    :cond_5
    move v2, v1

    .line 153
    goto/16 :goto_2
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDetach()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->c:Lcom/yelp/android/ui/activities/addphoto/g;

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a()V

    .line 219
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c04fd
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->h:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 199
    return-void
.end method
