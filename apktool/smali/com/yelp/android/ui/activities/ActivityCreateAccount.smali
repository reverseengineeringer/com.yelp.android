.class public Lcom/yelp/android/ui/activities/ActivityCreateAccount;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityCreateAccount.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/fg;
.implements Lcom/yelp/android/ui/util/ak;
.implements Lcom/yelp/android/ui/util/al;
.implements Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/ui/activities/fg",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityCreateAccount;",
        ">;",
        "Lcom/yelp/android/ui/util/ak;",
        "Lcom/yelp/android/ui/util/al;",
        "Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;"
    }
.end annotation


# static fields
.field private static final e:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private static f:Ljava/lang/String;


# instance fields
.field private A:Lcom/yelp/android/ui/util/ImageInputHelper;

.field private B:Z

.field private C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private D:Ljava/lang/String;

.field private E:Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/ActivityCreateAccount;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:[Ljava/lang/String;

.field private J:Z

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Landroid/content/SharedPreferences;

.field private Q:Landroid/content/SharedPreferences$Editor;

.field private R:Z

.field private S:Ljava/lang/String;

.field private T:Lcom/yelp/android/ui/activities/cc;

.field private U:Lcom/yelp/android/ui/dialogs/FlagsDialog;

.field private V:Landroid/widget/ImageButton;

.field private W:Ljava/util/Locale;

.field private X:Lcom/yelp/android/appdata/LocaleSettings;

.field private final Y:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final Z:Lcom/yelp/android/appdata/webrequests/di;

.field a:Lcom/yelp/android/appdata/webrequests/dc;

.field private final aa:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private ab:Lcom/yelp/android/ui/dialogs/ar;

.field private ac:Lcom/yelp/android/appdata/aa;

.field private ad:Landroid/content/DialogInterface$OnClickListener;

.field b:Landroid/content/DialogInterface$OnClickListener;

.field c:Landroid/content/DialogInterface$OnClickListener;

.field d:Landroid/content/DialogInterface$OnCancelListener;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/yelp/android/webimageview/WebImageView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/Spinner;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 717
    new-instance v0, Lcom/yelp/android/ui/activities/bg;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bg;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 744
    new-instance v0, Lcom/yelp/android/ui/activities/bh;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bh;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 753
    new-instance v0, Lcom/yelp/android/ui/activities/bi;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bi;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d:Landroid/content/DialogInterface$OnCancelListener;

    .line 989
    new-instance v0, Lcom/yelp/android/ui/activities/bl;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bl;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Y:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1116
    new-instance v0, Lcom/yelp/android/ui/activities/bm;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bm;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/appdata/webrequests/di;

    .line 1408
    new-instance v0, Lcom/yelp/android/ui/activities/bo;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bo;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->aa:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1477
    new-instance v0, Lcom/yelp/android/ui/activities/bp;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bp;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ab:Lcom/yelp/android/ui/dialogs/ar;

    .line 1517
    new-instance v0, Lcom/yelp/android/ui/activities/br;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/br;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ac:Lcom/yelp/android/appdata/aa;

    .line 1531
    new-instance v0, Lcom/yelp/android/ui/activities/bs;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bs;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ad:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic A(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    return v0
.end method

.method static synthetic B(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic C(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/cc;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->T:Lcom/yelp/android/ui/activities/cc;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    const-string/jumbo v1, "show_skip_button"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/activities/cc;)Lcom/yelp/android/ui/activities/cc;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->T:Lcom/yelp/android/ui/activities/cc;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/FlagsDialog;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->U:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1394
    const v0, 0x7f0c0408

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1396
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    const v1, 0x7f0202f2

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setBackgroundResource(I)V

    .line 1397
    return-void
.end method

.method private a(Landroid/location/Address;)V
    .locals 3

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Z

    if-nez v0, :cond_0

    .line 1212
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/lang/String;)V

    .line 1214
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Locale;)V

    .line 1215
    new-instance v1, Lcom/yelp/android/appdata/LocaleSettings;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    .line 1218
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    :cond_0
    return-void

    .line 1218
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final a(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 1193
    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    .line 1194
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1198
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/location/Address;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/dialogs/ap;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/dialogs/ap;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct/range {p0 .. p8}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/dialogs/ap;)V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->V:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/ap;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 616
    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/ap;->b()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Ljava/util/Locale;

    .line 617
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->X:Lcom/yelp/android/appdata/LocaleSettings;

    .line 618
    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/ap;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Locale;)V

    .line 619
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 622
    invoke-static {}, Lcom/yelp/android/ui/dialogs/ao;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/ap;

    .line 624
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/ap;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/dialogs/ap;)V

    .line 629
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    const v1, 0x7f070576

    const v2, 0x7f070483

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1006
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1073
    :goto_0
    return-void

    .line 1010
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1011
    const v1, 0x7f070576

    const v2, 0x7f070484

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1012
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1016
    :cond_1
    new-instance v1, Lcom/yelp/android/ui/activities/account/i;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/account/i;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/account/i;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1018
    const v1, 0x7f070576

    const v2, 0x7f070482

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1019
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1022
    :cond_2
    new-instance v1, Lcom/yelp/android/ui/activities/account/h;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/account/h;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/account/h;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1024
    const v1, 0x7f070576

    const v2, 0x7f0702f6

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1025
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1029
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1030
    const v1, 0x7f070576

    const v2, 0x7f070485

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1031
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1035
    :cond_4
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1036
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->X:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1037
    const v1, 0x7f070576

    const v2, 0x7f070486

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1041
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1039
    :cond_5
    const v1, 0x7f070576

    const v2, 0x7f070481

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    goto :goto_1

    .line 1047
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->F:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->O:Z

    .line 1050
    const/4 v7, 0x0

    .line 1051
    const/4 v6, 0x0

    .line 1052
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->X:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v7, p5

    .line 1059
    :goto_3
    :try_start_0
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->R:Z

    if-nez v1, :cond_a

    .line 1060
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a:Lcom/yelp/android/appdata/webrequests/dc;

    iget-object v11, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Ljava/util/Locale;

    iget-boolean v12, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->O:Z

    iget-object v13, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/appdata/webrequests/di;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v13}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZLcom/yelp/android/appdata/webrequests/di;)V

    .line 1063
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/support/h;->g()V

    .line 1065
    const v1, 0x7f07057c

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showLoadingDialog(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1070
    :catch_0
    move-exception v1

    .line 1071
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/appdata/webrequests/di;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-interface {v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/di;->a(ZLcom/yelp/android/appdata/webrequests/YelpException;)V

    goto/16 :goto_0

    .line 1047
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v6, p5

    .line 1055
    goto :goto_3

    .line 1067
    :cond_a
    const v1, 0x7f070576

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Locale;)V
    .locals 3

    .prologue
    const v2, 0x7f0706dc

    const v1, 0x7f07014c

    .line 1226
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    .line 1227
    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 1234
    :goto_0
    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/util/Calendar;)Z
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Z)Z
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Z

    return p1
.end method

.method private a(Ljava/util/Calendar;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 701
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v2, v1

    .line 702
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v2, v0

    .line 703
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v2, v4

    .line 707
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    aget v2, v2, v1

    if-eq v2, v0, :cond_0

    .line 708
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/high16 v1, 0x20000

    invoke-static {p0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 710
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->v:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1181
    const-wide/32 v0, 0x93a80

    .line 1182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1183
    add-long/2addr v0, v2

    .line 1184
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Q:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "coppa_error_message"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1185
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Q:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "coppa_lockout"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Q:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->R:Z

    .line 1188
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Ljava/lang/String;

    .line 1189
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/util/ImageInputHelper;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic d()Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 876
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Landroid/widget/LinearLayout;

    .line 880
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p1

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 881
    sget v2, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 882
    new-instance v2, Lcom/yelp/android/ui/activities/bj;

    invoke-direct {v2, p0, v0, p1}, Lcom/yelp/android/ui/activities/bj;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 904
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 905
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/dialogs/FlagsDialog;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->U:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    return-object v0
.end method

.method private e()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 340
    const-string/jumbo v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 342
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 344
    aget-object v3, v1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-object v2
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Ljava/util/Locale;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/16 v4, 0x21

    const/4 v5, 0x0

    .line 483
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/bv;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bv;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/bw;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bw;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/bx;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bx;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 522
    const v0, 0x7f0c049c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->V:Landroid/widget/ImageButton;

    .line 523
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->V:Landroid/widget/ImageButton;

    new-instance v1, Lcom/yelp/android/ui/activities/by;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/by;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Ljava/util/Locale;

    .line 535
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->X:Lcom/yelp/android/appdata/LocaleSettings;

    .line 536
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v2, Lcom/yelp/android/appdata/LocationService$Recentness;->HOUR:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ac:Lcom/yelp/android/appdata/aa;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/aa;)V

    .line 543
    new-instance v0, Lcom/yelp/android/ui/activities/cb;

    const v1, 0x7f080012

    invoke-direct {v0, p0, p0, v1}, Lcom/yelp/android/ui/activities/cb;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/content/Context;I)V

    .line 545
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 546
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->aa:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 548
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/bz;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bz;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ca;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ca;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 573
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/bf;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bf;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 590
    new-instance v1, Landroid/text/SpannableString;

    const v0, 0x7f0706b2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 591
    new-instance v0, Landroid/text/style/URLSpan;

    const v2, 0x7f0705db

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v1, v0, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 594
    new-instance v2, Landroid/text/SpannableString;

    const v0, 0x7f070499

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 595
    new-instance v0, Landroid/text/style/URLSpan;

    const v3, 0x7f07049d

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 598
    const v0, 0x7f0c04a5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 599
    const v3, 0x7f0701de

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/widget/TextView;)V

    .line 603
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5, v5}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 604
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 606
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5, v5}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 607
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 609
    sub-int v0, v1, v0

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:I

    .line 611
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(I)V

    .line 612
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/dialogs/ar;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ab:Lcom/yelp/android/ui/dialogs/ar;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 688
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/graphics/Bitmap;)V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    goto :goto_0

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private h()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    .line 807
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->updateOptionsMenu()V

    .line 810
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 813
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method private i()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 817
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    .line 818
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->updateOptionsMenu()V

    .line 820
    const v0, 0x7f0c0490

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 821
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 829
    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method private j()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 833
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    if-eqz v0, :cond_0

    .line 846
    :goto_0
    return-void

    .line 837
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    .line 838
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->updateOptionsMenu()V

    .line 841
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 842
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 843
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 844
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m()V

    .line 845
    const v0, 0x7f0c0112

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method private k()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v2, 0x7f0c0490

    .line 850
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    .line 853
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->updateOptionsMenu()V

    .line 855
    const v0, 0x7f0c010c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 856
    const v0, 0x7f0c010d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 857
    const v0, 0x7f0c0478

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 858
    const v0, 0x7f0c049a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 860
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 861
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 862
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 863
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 864
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l()V

    .line 865
    return-void
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:I

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d(I)V

    .line 869
    return-void
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d(I)V

    .line 873
    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1076
    const/4 v0, 0x0

    .line 1077
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1085
    :goto_0
    return-object v0

    .line 1079
    :pswitch_0
    const-string/jumbo v0, "m"

    goto :goto_0

    .line 1082
    :pswitch_1
    const-string/jumbo v0, "f"

    goto :goto_0

    .line 1077
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1089
    const/4 v0, 0x0

    .line 1090
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    aget v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 1091
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 1094
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy,MM,dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1095
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    :cond_0
    return-object v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1101
    const/4 v0, 0x0

    .line 1102
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1113
    :cond_0
    :goto_0
    return-object v0

    .line 1105
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/webimageview/ImageLoader;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1109
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/webimageview/ImageLoader;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    .line 1401
    return-void
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i()V

    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1404
    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    .line 1405
    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Ljava/lang/String;

    .line 1406
    return-void
.end method

.method static synthetic r(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h()V

    return-void
.end method

.method static synthetic s(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 1459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1461
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1464
    const-string/jumbo v1, "gender"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1467
    const-string/jumbo v1, "birthdate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    :cond_2
    const-string/jumbo v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1470
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1471
    const-string/jumbo v2, "provided_optional_fields"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    const-string/jumbo v0, "email_autoconfirmed"

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->O:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignedUp:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 1474
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->SignedUp:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-static {v0}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 1475
    return-void
.end method

.method static synthetic t(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/webimageview/WebImageView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    return-object v0
.end method

.method static synthetic u(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s()V

    return-void
.end method

.method static synthetic v(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic w(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Z

    return v0
.end method

.method static synthetic x(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ad:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic y(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic z(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e()[Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->x:Landroid/widget/Button;

    new-instance v2, Lcom/yelp/android/ui/activities/be;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/be;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    array-length v0, v0

    .line 392
    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 408
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/activities/bu;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bu;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 416
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 417
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 418
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 419
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 420
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y:Landroid/widget/Button;

    new-instance v2, Lcom/yelp/android/ui/activities/bq;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/bq;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 6

    .prologue
    .line 632
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Landroid/widget/LinearLayout;

    .line 633
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 638
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    neg-int v3, p1

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 639
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 643
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x0

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 644
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 1241
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1246
    const v0, 0x7f070047

    const v1, 0x7f070620

    const/high16 v2, 0x1040000

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showYesNoDialog(IIII)V

    .line 1249
    return-void
.end method

.method public a(Lcom/yelp/android/ui/util/p;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1352
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpWithGoogle:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 1353
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/yelp/android/ui/util/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/yelp/android/ui/util/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/yelp/android/ui/util/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    iget-object v0, p1, Lcom/yelp/android/ui/util/p;->e:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    .line 1359
    sget-object v1, Lcom/yelp/android/ui/activities/bt;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1372
    :goto_0
    iget-object v0, p1, Lcom/yelp/android/ui/util/p;->d:Ljava/util/Calendar;

    .line 1373
    if-eqz v0, :cond_0

    .line 1375
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Calendar;)Z

    .line 1378
    :cond_0
    iget-object v0, p1, Lcom/yelp/android/ui/util/p;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1379
    iget-object v0, p1, Lcom/yelp/android/ui/util/p;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    .line 1380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v1, p1, Lcom/yelp/android/ui/util/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1385
    return-void

    .line 1361
    :pswitch_0
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Z

    .line 1362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1365
    :pswitch_1
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Z

    .line 1366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1347
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f07024c

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1349
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1338
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1339
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/graphics/Bitmap;)V

    .line 1340
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q()V

    .line 1341
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/ActivityCreateAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    return-object v0
.end method

.method protected b(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 733
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 734
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:[Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Ljava/lang/String;

    .line 738
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/util/n;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/util/n;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;Ljava/lang/String;I)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 741
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j()V

    .line 742
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 1

    .prologue
    .line 1253
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpWithFacebookCanceled:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 1254
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1255
    return-void
.end method

.method public c()Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1389
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1390
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 1391
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1259
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpWithFacebook:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 1260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1261
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j()V

    .line 1262
    const v0, 0x7f070340

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showLoadingDialog(I)V

    .line 1263
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c()Lcom/yelp/android/serializable/FacebookUser;

    move-result-object v0

    .line 1264
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    .line 1265
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 1268
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_2

    .line 1277
    const-string/jumbo v1, "male"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1278
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Z

    .line 1279
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1286
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d()Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_EMAIL_BIRTHDAY_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    if-ne v1, v2, :cond_4

    .line 1287
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->F:Ljava/lang/String;

    .line 1288
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1289
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    :cond_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1294
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1295
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MM/dd/yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1297
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Calendar;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    :cond_4
    :goto_1
    const-string/jumbo v0, "FBConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getting string for facebook profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1308
    return-void

    .line 1280
    :cond_5
    const-string/jumbo v1, "female"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1281
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Z

    .line 1282
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1298
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 1320
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 1324
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SignUp:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b()Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1329
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Z

    if-eqz v0, :cond_0

    .line 1330
    const-string/jumbo v0, "source"

    const-string/jumbo v1, "write_review"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1332
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public imageLoaded(Lcom/yelp/android/webimageview/WebImageView;)V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 1314
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1315
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 910
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 912
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(IILandroid/content/Intent;)V

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(IILandroid/content/Intent;)V

    .line 917
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    new-instance v1, Lcom/yelp/android/ui/activities/bk;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/bk;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/fg;)V

    goto :goto_0

    .line 953
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 954
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p3, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 955
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showLoadingDialog()V

    goto :goto_0

    .line 956
    :cond_3
    if-ne p1, v4, :cond_0

    .line 957
    if-ne p2, v1, :cond_0

    .line 958
    new-instance v0, Lcom/yelp/android/ui/util/n;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/yelp/android/ui/util/n;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;Ljava/lang/String;I)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 968
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/WebImageView;->reset()V

    .line 971
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 972
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n:Landroid/widget/Button;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->v:Landroid/widget/TextView;

    const v1, 0x7f070447

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 975
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 976
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r()V

    .line 977
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q()V

    .line 978
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k()V

    .line 982
    :goto_0
    return-void

    .line 980
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 238
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 239
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->setContentView(I)V

    .line 240
    const v0, 0x7f07057d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->setTitle(I)V

    .line 243
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a:Lcom/yelp/android/appdata/webrequests/dc;

    .line 245
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    .line 248
    iput-boolean v6, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Z

    .line 249
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 250
    const v0, 0x7f0702c5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f:Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:[Ljava/lang/String;

    .line 253
    const v0, 0x7f0c0246

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/webimageview/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    .line 254
    const v0, 0x7f0c0498

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Landroid/widget/LinearLayout;

    .line 255
    const v0, 0x7f0c04a0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Spinner;

    .line 256
    const v0, 0x7f0c049f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m:Landroid/widget/Button;

    .line 257
    const v0, 0x7f0c04a2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n:Landroid/widget/Button;

    .line 258
    const v0, 0x7f0c04a4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o:Landroid/widget/Button;

    .line 259
    const v0, 0x7f0c010c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    .line 260
    const v0, 0x7f0c010d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    .line 261
    const v0, 0x7f0c0478

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Landroid/widget/EditText;

    .line 262
    const v0, 0x7f0c049a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    .line 263
    const v0, 0x7f0c049d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    .line 264
    const v0, 0x7f0c049e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->w:Landroid/widget/TextView;

    .line 265
    const v0, 0x7f0c0408

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f0c0492

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    .line 267
    const v0, 0x7f0c04a3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->v:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f0c0497

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/RelativeLayout;

    .line 269
    const v0, 0x7f0c049b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    .line 270
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/n;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    .line 272
    const v0, 0x7f0c0494

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->x:Landroid/widget/Button;

    .line 273
    const v0, 0x7f0c0493

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y:Landroid/widget/Button;

    .line 275
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 276
    const-string/jumbo v1, "signup_from_review"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Z

    .line 278
    if-eqz v0, :cond_0

    .line 279
    const-string/jumbo v1, "show_skip_button"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:Z

    .line 283
    :cond_0
    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->P:Landroid/content/SharedPreferences;

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->P:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Q:Landroid/content/SharedPreferences$Editor;

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->P:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "coppa_lockout"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 286
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->P:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "coppa_error_message"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Ljava/lang/String;

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 288
    iput-boolean v7, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->R:Z

    .line 291
    :cond_1
    if-eqz p1, :cond_2

    .line 292
    const-string/jumbo v0, "show_skip_button"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:Z

    .line 293
    const-string/jumbo v0, "FBUID_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    .line 294
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 296
    const-string/jumbo v1, "birthdate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    .line 297
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 298
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Calendar;)Z

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/os/Bundle;)V

    .line 301
    const-string/jumbo v0, "facebookEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->F:Ljava/lang/String;

    .line 302
    const-string/jumbo v0, "googleEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Ljava/lang/String;

    .line 303
    const-string/jumbo v0, "googlePhoto"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    .line 304
    const-string/jumbo v0, "full_form"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    .line 305
    const-string/jumbo v0, "auto_birthdate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Z

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "flags_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FlagsDialog;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->U:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->U:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->U:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ab:Lcom/yelp/android/ui/dialogs/ar;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Lcom/yelp/android/ui/dialogs/ar;)V

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "photo_add_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    .line 317
    if-eqz v0, :cond_4

    .line 318
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v1, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/app/Activity;)Lcom/yelp/android/ui/util/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/as;)V

    .line 321
    :cond_4
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    if-eqz v0, :cond_6

    .line 322
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h()V

    .line 328
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f()V

    .line 330
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b()Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    if-eqz v0, :cond_5

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/fg;)V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Landroid/app/Activity;)V

    .line 335
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a()V

    .line 336
    return-void

    .line 324
    :cond_6
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i()V

    goto :goto_0

    .line 245
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const v4, 0x7f0703ff

    .line 764
    sparse-switch p1, :sswitch_data_0

    .line 788
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 766
    :sswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Y:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/16 v3, 0x7b7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 768
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 769
    const v1, 0x7f0702ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07059d

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 776
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 778
    :sswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:[Ljava/lang/String;

    .line 779
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    const v2, 0x7f070548

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 786
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 764
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_2
        0x12d -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 475
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 476
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->T:Lcom/yelp/android/ui/activities/cc;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->T:Lcom/yelp/android/ui/activities/cc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/cc;->cancel(Z)Z

    .line 479
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 363
    :pswitch_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SignUpCancel:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "first_search_experiment"

    sget-object v0, Lcom/yelp/android/appdata/experiment/c;->b:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;->a()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    sget-object v0, Lcom/yelp/android/appdata/experiment/c;->b:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;->a()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->no_search_step:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    if-ne v0, v1, :cond_0

    .line 366
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->startActivity(Landroid/content/Intent;)V

    .line 370
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0504
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 460
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 463
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a:Lcom/yelp/android/appdata/webrequests/dc;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/appdata/webrequests/di;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->b(Lcom/yelp/android/appdata/webrequests/di;)V

    .line 464
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 466
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 471
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 794
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 796
    packed-switch p1, :pswitch_data_0

    .line 802
    :goto_0
    return-void

    .line 799
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpGooglePrompt:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 351
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 353
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 356
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 449
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g()V

    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a:Lcom/yelp/android/appdata/webrequests/dc;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/appdata/webrequests/di;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/di;)V

    .line 454
    const v0, 0x7f07057c

    invoke-super {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(I)V

    .line 456
    :cond_0
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c()Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 433
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 434
    const-string/jumbo v0, "birthdate"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 435
    const-string/jumbo v0, "FBUID_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 436
    const-string/jumbo v0, "facebookEmail"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string/jumbo v0, "googleEmail"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string/jumbo v0, "googlePhoto"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string/jumbo v0, "full_form"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    const-string/jumbo v0, "auto_birthdate"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 441
    const-string/jumbo v0, "show_skip_button"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/os/Bundle;)V

    .line 443
    return-void
.end method
