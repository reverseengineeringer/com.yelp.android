.class public Lcom/yelp/android/ui/activities/ActivityConfig;
.super Landroid/app/Activity;
.source "ActivityConfig.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/CheckBox;

.field private s:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityConfig;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 297
    const v0, 0x7f0c00f2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->a:Landroid/widget/Button;

    .line 298
    const v0, 0x7f0c00ed

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->b:Landroid/widget/CheckBox;

    .line 299
    const v0, 0x7f0c00ee

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->c:Landroid/widget/CheckBox;

    .line 300
    const v0, 0x7f0c0107

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->d:Landroid/widget/EditText;

    .line 301
    const v0, 0x7f0c0108

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->e:Landroid/widget/Button;

    .line 302
    const v0, 0x7f0c0109

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->f:Landroid/widget/Button;

    .line 303
    const v0, 0x7f0c00ef

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->g:Landroid/widget/CheckBox;

    .line 304
    const v0, 0x7f0c00f1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->h:Landroid/widget/Button;

    .line 305
    const v0, 0x7f0c00ea

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->i:Landroid/widget/CheckBox;

    .line 306
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->j:Landroid/widget/CheckBox;

    .line 307
    const v0, 0x7f0c00fb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->k:Landroid/widget/Button;

    .line 308
    const v0, 0x7f0c00f5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->o:Landroid/widget/Button;

    .line 309
    const v0, 0x7f0c00fa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->l:Landroid/widget/Button;

    .line 310
    const v0, 0x7f0c0105

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->r:Landroid/widget/CheckBox;

    .line 311
    const v0, 0x7f0c0106

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->s:Landroid/widget/EditText;

    .line 312
    const v0, 0x7f0c00f3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->n:Landroid/widget/Button;

    .line 313
    const v0, 0x7f0c00f4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->m:Landroid/widget/Button;

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->r:Landroid/widget/CheckBox;

    new-instance v1, Lcom/yelp/android/ui/activities/bc;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bc;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->a:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/u;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/u;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->e:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/v;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/v;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->f:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/w;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/w;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->h:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/x;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/x;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->k:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/y;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/y;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->o:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/z;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/z;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->l:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/aa;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/aa;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v0, 0x7f0c00f6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/ab;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ab;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v0, 0x7f0c00f7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/ac;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ac;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    const v0, 0x7f0c00f8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/ad;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ad;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    const v0, 0x7f0c00f9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/af;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/af;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const v0, 0x7f0c00ff

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/ag;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ag;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const v0, 0x7f0c0100

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/ah;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ah;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    const v0, 0x7f0c00f0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/ai;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ai;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    const v0, 0x7f0c00fc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/aj;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/aj;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    const v0, 0x7f0c010a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 442
    new-instance v1, Lcom/yelp/android/ui/activities/ak;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ak;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    const v0, 0x7f0c010b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 450
    new-instance v1, Lcom/yelp/android/ui/activities/al;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/al;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    const v0, 0x7f0c00e4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/LinearLayout;)V

    .line 460
    const v0, 0x7f0c00fd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/am;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/am;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->p:Landroid/widget/EditText;

    .line 470
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->q:Landroid/view/View;

    .line 471
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->q:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/an;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/an;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    const v0, 0x7f0c0101

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 480
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/debug/Debug;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 481
    new-instance v1, Lcom/yelp/android/ui/activities/ao;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ao;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 489
    const v0, 0x7f0c0102

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 490
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/debug/Debug;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 491
    new-instance v1, Lcom/yelp/android/ui/activities/aq;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/aq;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 498
    const v0, 0x7f0c0103

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 499
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/debug/Debug;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 501
    new-instance v1, Lcom/yelp/android/ui/activities/ar;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ar;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 508
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->n:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/as;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/as;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->m:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/at;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/at;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    const v0, 0x7f0c00fe

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/au;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/au;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    const v0, 0x7f0c0104

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 534
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/debug/Debug;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 535
    new-instance v1, Lcom/yelp/android/ui/activities/av;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/av;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 541
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityConfig;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityConfig;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v0, 0xa

    .line 599
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 601
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 604
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 605
    if-eqz p1, :cond_2

    .line 606
    add-int/lit8 v0, v1, 0xa

    .line 613
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->d:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_1
    :goto_1
    return-void

    .line 609
    :cond_2
    add-int/lit8 v1, v1, -0xa

    .line 610
    if-lt v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityConfig;[Ljava/lang/String;Landroid/location/Location;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityConfig;->a([Ljava/lang/String;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/String;Landroid/location/Location;)Z
    .locals 17

    .prologue
    .line 670
    const/4 v14, 0x0

    .line 672
    :try_start_0
    const-string/jumbo v2, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/ActivityConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 673
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v13

    .line 675
    if-nez p2, :cond_1

    .line 676
    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v6, p1, v4

    .line 677
    invoke-virtual {v2, v6}, Landroid/location/LocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v2, v6}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V

    .line 679
    instance-of v3, v13, Lcom/yelp/android/appdata/s;

    if-eqz v3, :cond_0

    .line 680
    move-object v0, v13

    check-cast v0, Lcom/yelp/android/appdata/s;

    move-object v3, v0

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/yelp/android/appdata/s;->a(Landroid/location/Location;)V

    .line 682
    :cond_0
    const-string/jumbo v3, "CONFIG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cleared mock location for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 685
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/4 v3, 0x0

    move v15, v3

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v3, p1, v15

    .line 686
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 695
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 696
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 685
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_1

    .line 699
    :cond_2
    new-instance v7, Lcom/yelp/android/ui/activities/aw;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/yelp/android/ui/activities/aw;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    .line 716
    move-object/from16 v0, p1

    array-length v10, v0

    const/4 v3, 0x0

    move v8, v3

    :goto_2
    if-ge v8, v10, :cond_4

    aget-object v3, p1, v8

    .line 718
    new-instance v9, Landroid/location/Location;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 719
    invoke-virtual {v9, v3}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 721
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 722
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 723
    invoke-virtual {v2, v3, v9}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 724
    instance-of v4, v13, Lcom/yelp/android/appdata/s;

    if-eqz v4, :cond_3

    .line 725
    move-object v0, v13

    check-cast v0, Lcom/yelp/android/appdata/s;

    move-object v4, v0

    invoke-virtual {v4, v9}, Lcom/yelp/android/appdata/s;->a(Landroid/location/Location;)V

    .line 727
    :cond_3
    const-string/jumbo v4, "CONFIG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Set up mock location for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " as "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string/jumbo v3, "CONFIG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Most recent location is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-object/from16 p2, v9

    goto :goto_2

    .line 730
    :cond_4
    invoke-virtual {v2, v7}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 732
    :cond_5
    invoke-virtual {v13}, Lcom/yelp/android/appdata/LocationService;->d()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 733
    const/4 v2, 0x1

    .line 741
    :goto_3
    return v2

    .line 735
    :catch_0
    move-exception v2

    .line 736
    const v2, 0x7f07023f

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/cr;->a(II)V

    move v2, v14

    .line 739
    goto :goto_3

    .line 737
    :catch_1
    move-exception v2

    .line 738
    const-string/jumbo v3, "CONFIG"

    const-string/jumbo v4, "Could not set the location for the Mock"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v14

    goto :goto_3
.end method

.method private b()V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->b:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v1

    iget-boolean v1, v1, Lcom/yelp/android/appdata/ba;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 546
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v1

    iget-boolean v1, v1, Lcom/yelp/android/appdata/ba;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->d:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v2

    iget v2, v2, Lcom/yelp/android/appdata/ba;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->g:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v1

    iget-boolean v1, v1, Lcom/yelp/android/appdata/ba;->h:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 553
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->i:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v1

    iget-boolean v1, v1, Lcom/yelp/android/appdata/ba;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 556
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->j:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    iget-boolean v1, v1, Lcom/yelp/android/debug/Debug;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 559
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->p:Landroid/widget/EditText;

    invoke-static {}, Lcom/yelp/android/services/x;->c()Lcom/yelp/android/debug/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/debug/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 561
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/debug/Debug;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->r:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 567
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->r:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->s:Landroid/widget/EditText;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/debug/Debug;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfig;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/16 v0, 0xa

    .line 570
    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/yelp/android/appdata/ba;->c:Z

    .line 572
    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/yelp/android/appdata/ba;->d:Z

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 578
    if-ge v1, v0, :cond_0

    .line 584
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v1

    iput v0, v1, Lcom/yelp/android/appdata/ba;->f:I

    .line 586
    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yelp/android/appdata/ba;->h:Z

    .line 588
    invoke-static {}, Lcom/yelp/android/appdata/ba;->a()Lcom/yelp/android/appdata/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yelp/android/appdata/ba;->i:Z

    .line 591
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->j:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yelp/android/debug/Debug;->b:Z

    .line 594
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/debug/Debug;->a(Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/String;)V

    .line 596
    return-void

    .line 581
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfig;->g()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 620
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->g()Lcom/yelp/android/ax/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ax/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 622
    new-instance v0, Lcom/yelp/android/ui/dialogs/v;

    const-string/jumbo v2, "Biz Search Cache"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/dialogs/v;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/v;->show()V

    .line 623
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfig;->c()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ActivityConfig;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfig;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 626
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->getSnapShot()Ljava/util/Set;

    move-result-object v0

    .line 627
    const-string/jumbo v1, "\n============================\n\n"

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v2, 0xc8

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 629
    const-string/jumbo v2, "Number of image requests: %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string/jumbo v2, "Type[%s], Query[%s], Permanent[%s], Response[%d]"

    .line 632
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/webimageview/ImageLoader;

    .line 634
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v7, v0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-boolean v8, v0, Lcom/yelp/android/webimageview/ImageLoader;->cachePermanently:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/ImageLoader;->getResponse()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 641
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/dialogs/v;

    const-string/jumbo v2, "Image Requests"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/dialogs/v;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/v;->show()V

    .line 642
    return-void
.end method

.method private f()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfig;->f()V

    return-void
.end method

.method private g()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 650
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getLiveRequests()Ljava/util/Set;

    move-result-object v0

    .line 651
    const-string/jumbo v1, "\n============================\n\n"

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v2, 0xc8

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 654
    const-string/jumbo v2, "Size of Requests: %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string/jumbo v2, "Type[%s], Query[%s], Status[%s], Exception[%s]"

    .line 657
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 659
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getCacheDescriptor()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getException()Lcom/yelp/android/appdata/webrequests/YelpException;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 666
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/dialogs/v;

    const-string/jumbo v2, "Net Requests"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/dialogs/v;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/v;->show()V

    .line 667
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfig;->e()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfig;->a()V

    .line 90
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityConfig;->b()V

    .line 91
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const v7, 0x104000a

    const/4 v0, 0x0

    .line 95
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    .line 96
    const/16 v2, 0xfdd

    if-ne p1, v2, :cond_1

    .line 97
    invoke-static {}, Lcom/yelp/android/debug/Debug$ApiEndpoint;->values()[Lcom/yelp/android/debug/Debug$ApiEndpoint;

    move-result-object v2

    .line 98
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 99
    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 100
    invoke-virtual {v5}, Lcom/yelp/android/debug/Debug$ApiEndpoint;->ordinal()I

    move-result v6

    iget-object v5, v5, Lcom/yelp/android/debug/Debug$ApiEndpoint;->endpoint:Ljava/lang/String;

    aput-object v5, v3, v6

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/yelp/android/ui/activities/t;

    invoke-direct {v4, p0, v1, v2}, Lcom/yelp/android/ui/activities/t;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;Lcom/yelp/android/appdata/AppData;[Lcom/yelp/android/debug/Debug$ApiEndpoint;)V

    invoke-virtual {v0, v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "API Host"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 280
    :goto_1
    return-object v0

    .line 117
    :cond_1
    const/16 v1, 0xfda

    if-ne p1, v1, :cond_2

    .line 118
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Disabled"

    aput-object v2, v1, v0

    const-string/jumbo v2, "Enabled"

    aput-object v2, v1, v3

    .line 121
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/yelp/android/ui/activities/ap;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/ap;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Fire Intent Now!"

    new-instance v2, Lcom/yelp/android/ui/activities/ae;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/ae;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "API Host"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 140
    :cond_2
    const/16 v1, 0xfdc

    if-ne p1, v1, :cond_3

    .line 141
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "yelp4:///biz/4kMBvIEWPxWkWKFN__8SxQ"

    aput-object v2, v1, v0

    const-string/jumbo v2, "yelp4:///check_in/sreJxXMkMWXGQ01zBgRXMg"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string/jumbo v3, "yelp5.3:///deal/_kUGB7vjZj3qO4mMRrotsw"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "yelp5.3:///user/deals"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "yelp5.3:///deals"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "yelp5.3:///user/alerts"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "yelp:///tip_of_the_day/UGgx2mnAwJWPhSQ0ylKFZg"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "yelp:///quicktip/ShdnbgwkH8vP4wNmQgLuBg"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "yelp5.3:///user/requests/compliments"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "yelp:///biz_videos?biz_id=u0SDDLwjc1D2G0QCu4R0Rw&video_id=OTMRCpxOg0S7dINxCmbTvg"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "yelp:///biz_photos/jRbn8hAwWd9yd8YxjwLuAg?select=qhLeGws6jR6xWlFlg5Gkdw"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "yelp:///events/OjFyYRhfiupyZwjeHrpg7Q"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "yelp:///search?find_desc=reservations&find_loc=San+Francisco&attribs_filter=BusinessAcceptsCreditCards,OnlineReservations"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "yelp:///search?find_desc=reservations&find_loc=San+Francisco"

    aput-object v3, v1, v2

    .line 165
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/yelp/android/ui/activities/ax;

    invoke-direct {v3, p0, v1}, Lcom/yelp/android/ui/activities/ax;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;[Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Push Test"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 184
    :cond_3
    const/16 v1, 0xfdb

    if-ne p1, v1, :cond_5

    .line 185
    invoke-static {}, Lcom/yelp/android/debug/Debug$MockLocation;->values()[Lcom/yelp/android/debug/Debug$MockLocation;

    move-result-object v1

    .line 186
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 187
    const-string/jumbo v3, "Disable Mocking"

    aput-object v3, v2, v0

    .line 188
    array-length v3, v1

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v4, v1, v0

    .line 189
    invoke-virtual {v4}, Lcom/yelp/android/debug/Debug$MockLocation;->ordinal()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Lcom/yelp/android/debug/Debug$MockLocation;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 191
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/yelp/android/ui/activities/ay;

    invoke-direct {v3, p0, v1}, Lcom/yelp/android/ui/activities/ay;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;[Lcom/yelp/android/debug/Debug$MockLocation;)V

    invoke-virtual {v0, v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Mock location"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 208
    :cond_5
    const v1, 0x138d5

    if-ne p1, v1, :cond_6

    .line 209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/yelp/android/debug/Debug;->c:[Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/az;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/az;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Launch VIEW Intent"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 221
    :cond_6
    const v1, 0x7f0c00fe

    if-ne p1, v1, :cond_8

    .line 222
    invoke-static {}, Lcom/yelp/android/util/PlatformQualifier;->values()[Lcom/yelp/android/util/PlatformQualifier;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 223
    invoke-static {}, Lcom/yelp/android/util/PlatformQualifier;->values()[Lcom/yelp/android/util/PlatformQualifier;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Z

    .line 224
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/yelp/android/appdata/i;->a(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    .line 226
    :goto_3
    invoke-static {}, Lcom/yelp/android/util/PlatformQualifier;->values()[Lcom/yelp/android/util/PlatformQualifier;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 227
    invoke-static {}, Lcom/yelp/android/util/PlatformQualifier;->values()[Lcom/yelp/android/util/PlatformQualifier;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/yelp/android/util/PlatformQualifier;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 228
    aget-object v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v2, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 230
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/yelp/android/ui/activities/ba;

    invoke-direct {v3, p0, v1}, Lcom/yelp/android/ui/activities/ba;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "PlatformQualifier"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 251
    :cond_8
    const v1, 0x845fed

    if-ne p1, v1, :cond_b

    .line 253
    invoke-static {}, Lcom/yelp/android/util/Holiday;->values()[Lcom/yelp/android/util/Holiday;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 254
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 255
    invoke-static {}, Lcom/yelp/android/util/Holiday;->values()[Lcom/yelp/android/util/Holiday;

    move-result-object v3

    array-length v3, v3

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_4
    if-ge v1, v3, :cond_a

    .line 256
    invoke-static {}, Lcom/yelp/android/util/Holiday;->values()[Lcom/yelp/android/util/Holiday;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/yelp/android/util/Holiday;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 257
    invoke-static {}, Lcom/yelp/android/util/Holiday;->values()[Lcom/yelp/android/util/Holiday;

    move-result-object v4

    aget-object v4, v4, v1

    sget-object v5, Lcom/yelp/android/util/Holiday;->mForcedHoliday:Lcom/yelp/android/util/Holiday;

    if-ne v4, v5, :cond_9

    move v0, v1

    .line 255
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 261
    :cond_a
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v3, "None"

    aput-object v3, v2, v1

    .line 263
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "Which HolidayTheme"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/yelp/android/ui/activities/bb;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/bb;-><init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 280
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 286
    const/16 v0, 0xfdd

    if-ne p1, v0, :cond_1

    move-object v0, p2

    .line 287
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/services/x;->d()Lcom/yelp/android/debug/Debug$ApiEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/debug/Debug$ApiEndpoint;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 293
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 294
    return-void

    .line 289
    :cond_1
    const/16 v0, 0xfda

    if-ne p1, v0, :cond_0

    .line 290
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/debug/Debug;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    move-object v0, p2

    .line 291
    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 290
    goto :goto_1
.end method
