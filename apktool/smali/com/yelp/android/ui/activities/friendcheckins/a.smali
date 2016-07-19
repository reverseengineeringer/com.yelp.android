.class public Lcom/yelp/android/ui/activities/friendcheckins/a;
.super Lcom/yelp/android/ui/util/w;
.source "CheckInsNearbyAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/friendcheckins/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/CheckIn;",
        ">;",
        "Lcom/yelp/android/ui/util/g;"
    }
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Z

.field private h:Lcom/yelp/android/ui/activities/friendcheckins/c;

.field private i:Lcom/yelp/android/ui/activities/friendcheckins/c;

.field private j:Lcom/yelp/android/ui/activities/friendcheckins/c;

.field private k:Landroid/location/Location;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 82
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->f:Z

    .line 83
    iput-boolean p2, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->g:Z

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->a:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->b:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->c:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->d:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->e:Landroid/util/SparseArray;

    .line 89
    return-void
.end method

.method private a(ILcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/ui/activities/friendcheckins/a$a;Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 200
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->w()I

    move-result v2

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 203
    if-nez v0, :cond_0

    .line 204
    const v0, 0x7f080006

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    :cond_0
    iget-object v2, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->l:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/c;)V

    .line 210
    iget-object v2, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->l:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setChecked(Z)V

    .line 211
    iget-object v2, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->l:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->h:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/c;)V

    .line 212
    iget-object v2, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->l:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {v2, p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setTag(Ljava/lang/Object;)V

    .line 213
    iget-object v2, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->m:Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    iget-object v2, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->k:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->l()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/RankTitle$Rank;->greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->l()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v2

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 220
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Comment;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    invoke-virtual {p2, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 228
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 229
    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    :goto_1
    iget-object v0, p3, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->k:Landroid/location/Location;

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 335
    return-void
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/c;

    const-string/jumbo v1, "extra.data"

    const-string/jumbo v2, "extra.checked"

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/c;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->h:Lcom/yelp/android/ui/activities/friendcheckins/c;

    .line 93
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/c;

    const-string/jumbo v1, "extra.data"

    const-string/jumbo v2, "extra.checked"

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/c;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->i:Lcom/yelp/android/ui/activities/friendcheckins/c;

    .line 97
    return-void
.end method

.method public c(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/c;

    const-string/jumbo v1, "extra.data"

    const-string/jumbo v2, "extra.checked"

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/c;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->j:Lcom/yelp/android/ui/activities/friendcheckins/c;

    .line 101
    return-void
.end method

.method public getItemViewType(I)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CheckIn;

    .line 297
    if-nez v0, :cond_0

    .line 298
    const/4 v0, -0x1

    .line 312
    :goto_0
    return v0

    .line 299
    :cond_0
    instance-of v1, v0, Lcom/yelp/android/serializable/ExternalCheckIn;

    if-eqz v1, :cond_1

    move v0, v2

    .line 300
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 302
    check-cast v1, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 303
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->l()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v1

    sget-object v4, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v1, v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z

    move-result v1

    .line 304
    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    if-eqz v0, :cond_2

    move v2, v3

    .line 305
    :cond_2
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 306
    const/4 v0, 0x3

    goto :goto_0

    .line 307
    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    .line 308
    const/4 v0, 0x2

    goto :goto_0

    .line 309
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 310
    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    move v0, v3

    .line 312
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 109
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 110
    if-nez p2, :cond_1

    .line 111
    const v0, 0x7f0301bf

    .line 112
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const v0, 0x7f030171

    .line 115
    :cond_0
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->getItemViewType(I)I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/yelp/android/ui/activities/friendcheckins/a$a;-><init>(ILandroid/view/View;)V

    .line 117
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->getItemViewType(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->j:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->i:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->k:Landroid/location/Location;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->k:Landroid/location/Location;

    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;

    .line 129
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/CheckIn;

    .line 130
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    const v2, 0x7f080025

    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v4

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 137
    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    :cond_2
    iget-object v4, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->b:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 141
    iget-object v2, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->c()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0200c6

    invoke-virtual {v2, v4, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 142
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->g:Z

    if-eqz v2, :cond_8

    .line 143
    iget-object v2, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->c:Landroid/widget/TextView;

    const v4, 0x7f070447

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_1
    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    .line 150
    iget-object v4, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->f:Z

    if-eqz v2, :cond_9

    .line 152
    iget-object v2, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->e:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->e()Ljava/util/Date;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 171
    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    :cond_4
    iget-object v4, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 177
    iget-object v2, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->g:Landroid/widget/TextView;

    const v4, 0x7f070639

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_5
    instance-of v2, v1, Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v2, :cond_6

    .line 182
    check-cast v1, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(ILcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/ui/activities/friendcheckins/a$a;Landroid/view/ViewGroup;)V

    .line 184
    :cond_6
    return-object p2

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->k:Landroid/location/Location;

    goto/16 :goto_0

    .line 147
    :cond_8
    iget-object v2, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->c:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    :cond_9
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->a:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_a

    .line 156
    invoke-interface {v1}, Lcom/yelp/android/serializable/CheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->k:Landroid/location/Location;

    sget-object v5, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v2, v4, v3, v5}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v2

    .line 160
    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 163
    :cond_a
    iget-object v4, v0, Lcom/yelp/android/ui/activities/friendcheckins/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x5

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/a;->c()V

    .line 325
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->notifyDataSetChanged()V

    .line 326
    return-void
.end method
