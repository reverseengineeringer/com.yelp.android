.class public Lcom/yelp/android/ui/dialogs/c$d;
.super Lcom/yelp/android/ui/dialogs/c$a;
.source "FiltersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final synthetic e:Lcom/yelp/android/ui/dialogs/c;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/dialogs/c;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 271
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c$d;->e:Lcom/yelp/android/ui/dialogs/c;

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/dialogs/c$a;-><init>(Lcom/yelp/android/ui/dialogs/c;Landroid/view/View;)V

    .line 273
    const v0, 0x7f0f03c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->f:Landroid/widget/Button;

    .line 274
    const v0, 0x7f0f03c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->g:Landroid/widget/Button;

    .line 275
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/c$d;)Landroid/view/View;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->j:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 335
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c$d;->i:Landroid/view/View$OnClickListener;

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->g:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/c$d;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/c$d;->b(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/c$d;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/c$d;->a(Ljava/util/Calendar;)V

    return-void
.end method

.method private a(Ljava/util/Calendar;)V
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 315
    const-string/jumbo v1, "EEE MMM dd"

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 317
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method

.method private b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 342
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c$d;->h:Landroid/view/View$OnClickListener;

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/c$d;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/c$d;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/c$d;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/c$d;->b(Ljava/util/Calendar;)V

    return-void
.end method

.method private b(Ljava/util/Calendar;)V
    .locals 6

    .prologue
    .line 322
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 323
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/c$d;->g:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070459

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/yelp/android/ui/dialogs/c$d$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/dialogs/c$d$1;-><init>(Lcom/yelp/android/ui/dialogs/c$d;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/c$a;->a()V

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->j:Landroid/view/View;

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->j:Landroid/view/View;

    const v1, 0x7f0f03c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->g:Landroid/widget/Button;

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$d;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->j:Landroid/view/View;

    const v1, 0x7f0f03c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->f:Landroid/widget/Button;

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$d;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/dialogs/c$d;->b(Ljava/util/Calendar;)V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/dialogs/c$d;->a(Ljava/util/Calendar;)V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$d;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v0, p0}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V

    .line 288
    return-void
.end method
