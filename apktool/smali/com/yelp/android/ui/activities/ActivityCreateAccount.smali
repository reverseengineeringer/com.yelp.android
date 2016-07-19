.class public Lcom/yelp/android/ui/activities/ActivityCreateAccount;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityCreateAccount.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/FacebookConnectManager$a;
.implements Lcom/yelp/android/ui/util/ImageInputHelper$b;
.implements Lcom/yelp/android/ui/util/ImageInputHelper$c;
.implements Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/ActivityCreateAccount$24;,
        Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;,
        Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;,
        Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/ui/activities/FacebookConnectManager$a",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityCreateAccount;",
        ">;",
        "Lcom/yelp/android/ui/util/ImageInputHelper$b;",
        "Lcom/yelp/android/ui/util/ImageInputHelper$c;",
        "Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;"
    }
.end annotation


# static fields
.field private static final d:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private static e:Ljava/lang/String;


# instance fields
.field private A:[I

.field private B:Lcom/yelp/android/ui/util/ImageInputHelper;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private G:Lcom/yelp/android/appdata/webrequests/co;

.field private H:Ljava/lang/String;

.field private I:Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/ActivityCreateAccount;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:[Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Landroid/content/SharedPreferences;

.field private V:Landroid/content/SharedPreferences$Editor;

.field private W:Z

.field private X:Ljava/lang/String;

.field private Y:Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;

.field private Z:Lcom/yelp/android/ui/dialogs/FlagsDialog;

.field a:Landroid/content/DialogInterface$OnClickListener;

.field private aa:Landroid/widget/ImageButton;

.field private ab:Landroid/widget/ImageButton;

.field private ac:Ljava/util/Locale;

.field private ad:Lcom/yelp/android/appdata/LocaleSettings;

.field private ae:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private af:Z

.field private final ag:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final ah:Lcom/yelp/android/appdata/webrequests/co$a;

.field private final ai:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private aj:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

.field private ak:Lcom/yelp/android/appdata/LocationService$a;

.field private al:Landroid/content/DialogInterface$OnClickListener;

.field private am:Landroid/animation/Animator$AnimatorListener;

.field b:Landroid/content/DialogInterface$OnClickListener;

.field c:Landroid/content/DialogInterface$OnCancelListener;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/yelp/android/webimageview/WebImageView;

.field private k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 202
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C:Z

    .line 203
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Z

    .line 946
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$10;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 976
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$11;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$11;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 985
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$13;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$13;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c:Landroid/content/DialogInterface$OnCancelListener;

    .line 1298
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$16;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$16;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ag:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1447
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ah:Lcom/yelp/android/appdata/webrequests/co$a;

    .line 1750
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$18;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ai:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1819
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$19;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$19;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->aj:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

    .line 1861
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$20;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$20;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ak:Lcom/yelp/android/appdata/LocationService$a;

    .line 1875
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$21;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$21;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->al:Landroid/content/DialogInterface$OnClickListener;

    .line 1883
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$22;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$22;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->am:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic A(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y()V

    return-void
.end method

.method static synthetic B(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Y:Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;

    return-object v0
.end method

.method static synthetic C(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic D(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->af:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "signup_from_review"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const-string/jumbo v1, "extra.launch_fb_signup_splash"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;)Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Y:Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/FlagsDialog;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1731
    const v0, 0x7f0f04ee

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1733
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    const v1, 0x7f020419

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setBackgroundResource(I)V

    .line 1734
    return-void
.end method

.method private a(Landroid/location/Address;)V
    .locals 3

    .prologue
    .line 1534
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Z

    if-nez v0, :cond_0

    .line 1541
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/lang/String;)V

    .line 1543
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Locale;)V

    .line 1544
    new-instance v1, Lcom/yelp/android/appdata/LocaleSettings;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    .line 1547
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    :cond_0
    return-void

    .line 1547
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 555
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 557
    const v0, 0x7f070316

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 558
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v2, :cond_2

    .line 560
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(I)V

    goto :goto_0

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_0

    .line 562
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showDialog(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/location/Address;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljp/line/android/sdk/login/LineLoginFuture;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljp/line/android/sdk/login/LineLoginFuture;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->aa:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 792
    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ac:Ljava/util/Locale;

    .line 793
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ac:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ad:Lcom/yelp/android/appdata/LocaleSettings;

    .line 794
    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Locale;)V

    .line 795
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 798
    invoke-static {}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;

    .line 800
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V

    .line 805
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 1319
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    const v1, 0x7f07057e

    const v2, 0x7f070497

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1399
    :goto_0
    return-void

    .line 1325
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1326
    const v1, 0x7f07057e

    const v2, 0x7f070499

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1331
    :cond_1
    new-instance v1, Lcom/yelp/android/ui/activities/account/a$b;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/account/a$b;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/account/a$b;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1332
    const v1, 0x7f07057e

    const v2, 0x7f070496

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 1336
    :cond_2
    new-instance v1, Lcom/yelp/android/ui/activities/account/a$a;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/account/a$a;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/account/a$a;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1337
    const v1, 0x7f07057e

    const v2, 0x7f07033a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 1342
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1343
    const v1, 0x7f07057e

    const v2, 0x7f07049a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1348
    :cond_4
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ad:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1350
    const v1, 0x7f07057e

    const v2, 0x7f07049b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    .line 1354
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 1352
    :cond_5
    const v1, 0x7f07057e

    const v2, 0x7f070495

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(II)V

    goto :goto_1

    .line 1360
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->T:Z

    .line 1364
    const/4 v7, 0x0

    .line 1365
    const/4 v6, 0x0

    .line 1366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ad:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v7, p5

    .line 1373
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Z

    if-nez v1, :cond_a

    .line 1374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Lcom/yelp/android/appdata/webrequests/co;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ac:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->T:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ah:Lcom/yelp/android/appdata/webrequests/co$a;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->P:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->O:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v15}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZLcom/yelp/android/appdata/webrequests/co$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/support/b;->g()V

    .line 1391
    const v1, 0x7f070584

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showLoadingDialog(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1396
    :catch_0
    move-exception v1

    .line 1397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ah:Lcom/yelp/android/appdata/webrequests/co$a;

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-interface {v1, v2}, Lcom/yelp/android/appdata/webrequests/co$a;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto/16 :goto_0

    .line 1360
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v6, p5

    .line 1369
    goto :goto_3

    .line 1393
    :cond_a
    const v1, 0x7f07057e

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->X:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->X:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Locale;)V
    .locals 3

    .prologue
    const v2, 0x7f0706b3

    const v1, 0x7f0701c9

    .line 1556
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    .line 1557
    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1559
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 1564
    :goto_0
    return-void

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1562
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0
.end method

.method private a(Ljp/line/android/sdk/login/LineLoginFuture;)V
    .locals 2

    .prologue
    .line 884
    invoke-interface {p1}, Ljp/line/android/sdk/login/LineLoginFuture;->g()Lcom/yelp/android/db/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/db/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->P:Ljava/lang/String;

    .line 885
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LineSignupSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 887
    invoke-static {}, Ljp/line/android/sdk/c;->a()Ljp/line/android/sdk/a;

    move-result-object v0

    invoke-interface {v0}, Ljp/line/android/sdk/a;->b()Ljp/line/android/sdk/api/a;

    move-result-object v0

    .line 888
    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$7;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-interface {v0, v1}, Ljp/line/android/sdk/api/a;->b(Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;

    .line 914
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$8;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 921
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/util/Calendar;)Z
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Z)Z
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C:Z

    return p1
.end method

.method private a(Ljava/util/Calendar;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 858
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v2, v1

    .line 859
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v2, v0

    .line 860
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v2, v4

    .line 864
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    aget v2, v2, v1

    if-eq v2, v0, :cond_0

    .line 865
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/high16 v1, 0x20000

    invoke-static {p0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 868
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->v:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y()V

    .line 874
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    const-string/jumbo v1, "extra.show_skip_button"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/util/ImageInputHelper;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->O:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1519
    const-wide/32 v0, 0x93a80

    .line 1520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1521
    add-long/2addr v0, v2

    .line 1522
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->V:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "coppa_error_message"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1523
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->V:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "coppa_lockout"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1524
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->V:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Z

    .line 1526
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->X:Ljava/lang/String;

    .line 1527
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Z)Z
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/widgets/SelectionSpinner;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Z)Z
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->af:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/dialogs/FlagsDialog;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Z)Z
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Z

    return p1
.end method

.method static synthetic e()Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ac:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/dialogs/FlagsDialog$b;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->aj:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

    return-object v0
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.launch_fb_signup_splash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private g()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 393
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 394
    const-string/jumbo v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 395
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 396
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 397
    aget-object v3, v1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-object v2
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 568
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$25;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$25;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$26;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$26;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$27;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$27;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 615
    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$28;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$28;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 626
    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->aa:Landroid/widget/ImageButton;

    .line 627
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    const v0, 0x7f0f05a3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ab:Landroid/widget/ImageButton;

    .line 629
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ab:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ac:Ljava/util/Locale;

    .line 632
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ac:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ad:Lcom/yelp/android/appdata/LocaleSettings;

    .line 633
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ac:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/lang/String;)V

    .line 637
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v2, Lcom/yelp/android/appdata/LocationService$Recentness;->HOUR:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ak:Lcom/yelp/android/appdata/LocationService$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;)V

    .line 641
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ad:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 644
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 645
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 648
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;

    const v1, 0x7f0d0012

    invoke-direct {v0, p0, p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$a;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/content/Context;I)V

    .line 649
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 650
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ai:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 652
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$29;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$29;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$30;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$30;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 672
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$2;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 688
    const v0, 0x7f070683

    const v1, 0x7f0705c5

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->b(Landroid/content/Context;II)Landroid/text/Spannable;

    move-result-object v1

    .line 691
    const v0, 0x7f0704b3

    const v2, 0x7f0704b7

    invoke-static {p0, v0, v2}, Lcom/yelp/android/util/StringUtils;->b(Landroid/content/Context;II)Landroid/text/Spannable;

    move-result-object v2

    .line 695
    const v0, 0x7f0f013d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 696
    const v3, 0x7f07022c

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

    .line 699
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/widget/TextView;)V

    .line 701
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$3;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 726
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 727
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 728
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 730
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000a

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ae:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 733
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$4;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 744
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$5;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 761
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setIsDropDownEnabled(Z)V

    .line 765
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$6;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 788
    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->x()V

    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 846
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/graphics/Bitmap;)V

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    goto :goto_0

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 924
    invoke-static {}, Ljp/line/android/sdk/c;->a()Ljp/line/android/sdk/a;

    move-result-object v0

    .line 925
    invoke-interface {v0}, Ljp/line/android/sdk/a;->c()Ljp/line/android/sdk/login/a;

    move-result-object v0

    .line 926
    invoke-interface {v0, p0}, Ljp/line/android/sdk/login/a;->a(Landroid/app/Activity;)Ljp/line/android/sdk/login/LineLoginFuture;

    move-result-object v0

    .line 927
    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$9;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$9;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-interface {v0, v1}, Ljp/line/android/sdk/login/LineLoginFuture;->a(Ljp/line/android/sdk/login/b;)Z

    .line 944
    return-void
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    .line 1038
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->updateOptionsMenu()V

    .line 1041
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1042
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1045
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1048
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o()V

    .line 1049
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1056
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    .line 1057
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->updateOptionsMenu()V

    .line 1059
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    const v0, 0x7f0f00ec

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1067
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1074
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o()V

    .line 1075
    return-void
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m()V

    return-void
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1082
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    if-eqz v0, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1086
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    .line 1087
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->updateOptionsMenu()V

    .line 1090
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 1091
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 1094
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p()I

    move-result v0

    .line 1095
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->am:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1105
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1106
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1114
    const v0, 0x7f0f0152

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    return v0
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1122
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    if-nez v0, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1126
    :cond_0
    iput-boolean v5, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    .line 1127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->updateOptionsMenu()V

    .line 1129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    const v0, 0x7f0f00ec

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 1139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 1143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$14;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$14;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1167
    const v0, 0x7f0f0152

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v5, v5}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o()V

    return-void
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1174
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p()I

    move-result v2

    .line 1175
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    if-eqz v0, :cond_1

    int-to-float v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    if-eqz v3, :cond_0

    int-to-float v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1183
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    return-void

    :cond_1
    move v0, v1

    .line 1175
    goto :goto_0
.end method

.method private p()I
    .locals 3

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v0

    .line 1197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1201
    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/webimageview/WebImageView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    return-object v0
.end method

.method private q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1402
    const/4 v0, 0x0

    .line 1403
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1411
    :goto_0
    return-object v0

    .line 1405
    :pswitch_0
    const-string/jumbo v0, "m"

    goto :goto_0

    .line 1408
    :pswitch_1
    const-string/jumbo v0, "f"

    goto :goto_0

    .line 1403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u()V

    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1415
    const/4 v0, 0x0

    .line 1416
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    aget v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 1417
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1418
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 1419
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy,MM,dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1420
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    :cond_0
    return-object v0
.end method

.method static synthetic r(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l()V

    return-void
.end method

.method static synthetic s(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private s()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1427
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Z

    if-eqz v1, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return-object v0

    .line 1432
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1433
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1434
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1435
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/webimageview/ImageLoader;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1439
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->N:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/webimageview/ImageLoader;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1441
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/webimageview/ImageLoader;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 1737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    .line 1738
    return-void
.end method

.method static synthetic t(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k()V

    return-void
.end method

.method static synthetic u(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1741
    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->P:Ljava/lang/String;

    .line 1742
    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->O:Ljava/lang/String;

    .line 1743
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1746
    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Ljava/lang/String;

    .line 1747
    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:Ljava/lang/String;

    .line 1748
    return-void
.end method

.method static synthetic v(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->w()V

    return-void
.end method

.method static synthetic w(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n:Landroid/widget/Button;

    return-object v0
.end method

.method private w()V
    .locals 3

    .prologue
    .line 1801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1802
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1803
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1806
    const-string/jumbo v1, "gender"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1809
    const-string/jumbo v1, "birthdate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    :cond_2
    const-string/jumbo v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1813
    const-string/jumbo v2, "provided_optional_fields"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    const-string/jumbo v0, "email_autoconfirmed"

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->T:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignedUp:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 1816
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->SignedUp:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 1817
    return-void
.end method

.method static synthetic x(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    return-object v0
.end method

.method private x()V
    .locals 9

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    return-void
.end method

.method static synthetic y(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->al:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private y()V
    .locals 1

    .prologue
    .line 1909
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1910
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 1911
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1913
    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->x:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$1;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$12;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$12;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->l:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->LineSignupShown:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$23;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$23;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 962
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 963
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:Ljava/lang/String;

    .line 967
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/util/j;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yelp/android/ui/util/j;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;Ljava/lang/String;I)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 973
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m()V

    .line 974
    return-void

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 1571
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 1575
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1576
    const v0, 0x7f0700cf

    const v1, 0x7f07060c

    const/high16 v2, 0x1040000

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showYesNoDialog(IIII)V

    .line 1581
    return-void
.end method

.method public a(Lcom/yelp/android/ui/util/j$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1694
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpWithGoogle:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 1695
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1696
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/yelp/android/ui/util/j$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1697
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/yelp/android/ui/util/j$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1698
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    iget-object v1, p1, Lcom/yelp/android/ui/util/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1700
    iget-object v0, p1, Lcom/yelp/android/ui/util/j$a;->e:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    .line 1701
    sget-object v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$24;->c:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1710
    :goto_0
    iget-object v0, p1, Lcom/yelp/android/ui/util/j$a;->d:Ljava/util/Calendar;

    .line 1711
    if-eqz v0, :cond_0

    .line 1713
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Calendar;)Z

    .line 1716
    :cond_0
    iget-object v0, p1, Lcom/yelp/android/ui/util/j$a;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1717
    iget-object v0, p1, Lcom/yelp/android/ui/util/j$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Ljava/lang/String;

    .line 1718
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v1, p1, Lcom/yelp/android/ui/util/j$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1722
    return-void

    .line 1703
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->setSelection(I)V

    goto :goto_0

    .line 1706
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->setSelection(I)V

    goto :goto_0

    .line 1701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1689
    const v0, 0x7f070118

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0702a2

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1691
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z
    .locals 2

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1680
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1681
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/graphics/Bitmap;)V

    .line 1682
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t()V

    .line 1683
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 488
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const v1, 0x7f070379

    sget-object v2, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_EMAIL_BIRTHDAY_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/FacebookConnectManager$a;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 494
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    .line 495
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1726
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1727
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 1728
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 1

    .prologue
    .line 1592
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpWithFacebookCanceled:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 1593
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1594
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->finish()V

    .line 1597
    :cond_0
    return-void
.end method

.method public c()Lcom/yelp/android/ui/activities/FacebookConnectManager;
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
    .line 500
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    return-object v0
.end method

.method public c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1601
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpWithFacebook:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 1602
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1603
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m()V

    .line 1604
    const v0, 0x7f07037b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showLoadingDialog(I)V

    .line 1605
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c()Lcom/yelp/android/serializable/FacebookUser;

    move-result-object v0

    .line 1606
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    .line 1607
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;ZLcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;)V

    .line 1610
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1614
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1615
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1618
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_2

    .line 1619
    const-string/jumbo v1, "male"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1620
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->setSelection(I)V

    .line 1626
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d()Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_EMAIL_BIRTHDAY_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    if-ne v1, v2, :cond_4

    .line 1627
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Ljava/lang/String;

    .line 1628
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1629
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1632
    :cond_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1634
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1635
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MM/dd/yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1638
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Calendar;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    :cond_4
    :goto_1
    const-string/jumbo v0, "FBConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getting string for facebook profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    return-void

    .line 1621
    :cond_5
    const-string/jumbo v1, "female"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1622
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->setSelection(I)V

    goto :goto_0

    .line 1639
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public d()Lcom/yelp/android/ui/activities/FacebookConnectManager;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    return-object v0
.end method

.method public d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 1661
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 1665
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SignUp:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c()Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1670
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 1671
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Q:Z

    if-eqz v1, :cond_0

    .line 1672
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "write_review"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    :cond_0
    return-object v0
.end method

.method public imageLoaded(Lcom/yelp/android/webimageview/WebImageView;)V
    .locals 2

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1654
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 1655
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1656
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1207
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 1213
    :goto_0
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C:Z

    .line 1215
    if-eqz v0, :cond_2

    .line 1217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$15;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager$a;)V

    .line 1270
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1209
    goto :goto_0

    .line 1257
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    if-ne p2, v3, :cond_3

    .line 1258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p3, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/content/Intent;Lcom/yelp/android/ui/util/ImageInputHelper$c;)Landroid/os/AsyncTask;

    move-result-object v0

    new-array v1, v1, [Landroid/content/Context;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1259
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showLoadingDialog()V

    goto :goto_1

    .line 1260
    :cond_3
    if-ne p1, v4, :cond_0

    .line 1261
    if-ne p2, v3, :cond_0

    .line 1262
    new-instance v0, Lcom/yelp/android/ui/util/j;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:Ljava/lang/String;

    sget-object v3, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/yelp/android/ui/util/j;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;Ljava/lang/String;I)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1274
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setIsDropDownEnabled(Z)V

    .line 1277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/WebImageView;->reset()V

    .line 1278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 1279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m:Landroid/widget/Button;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->v:Landroid/widget/TextView;

    const v1, 0x7f07046a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SelectionSpinner;->a()V

    .line 1283
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->v()V

    .line 1284
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t()V

    .line 1285
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u()V

    .line 1286
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n()V

    .line 1287
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C:Z

    .line 1291
    :goto_0
    return-void

    .line 1289
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/16 v2, 0x2000

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 272
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 273
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 278
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->setContentView(I)V

    .line 279
    const v0, 0x7f070585

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->setTitle(I)V

    .line 282
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Lcom/yelp/android/appdata/webrequests/co;

    .line 284
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    .line 285
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->E:Z

    .line 286
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D:Z

    .line 287
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 288
    const v0, 0x7f0706e8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    .line 291
    const v0, 0x7f0f025a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/webimageview/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    .line 292
    const v0, 0x7f0f05a6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SelectionSpinner;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k:Lcom/yelp/android/ui/widgets/SelectionSpinner;

    .line 293
    const v0, 0x7f0f05a5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l:Landroid/widget/Button;

    .line 294
    const v0, 0x7f0f05a8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->m:Landroid/widget/Button;

    .line 295
    const v0, 0x7f0f05aa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->n:Landroid/widget/Button;

    .line 296
    const v0, 0x7f0f05a0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->o:Landroid/widget/LinearLayout;

    .line 297
    const v0, 0x7f0f0134

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->p:Landroid/widget/EditText;

    .line 298
    const v0, 0x7f0f0135

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->q:Landroid/widget/EditText;

    .line 299
    const v0, 0x7f0f0112

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->r:Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    .line 300
    const v0, 0x7f0f013c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->s:Landroid/widget/EditText;

    .line 301
    const v0, 0x7f0f05a2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->t:Landroid/widget/EditText;

    .line 302
    const v0, 0x7f0f05a4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->w:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f0f04ee

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0f0598

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f:Landroid/widget/RelativeLayout;

    .line 305
    const v0, 0x7f0f05a9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->v:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f0f059e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g:Landroid/widget/RelativeLayout;

    .line 307
    const v0, 0x7f0f059f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h:Landroid/widget/LinearLayout;

    .line 308
    const v0, 0x7f0f05a1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i:Landroid/widget/LinearLayout;

    .line 309
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/f;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    .line 310
    const v0, 0x7f0f059a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->x:Landroid/widget/Button;

    .line 311
    const v0, 0x7f0f0599

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y:Landroid/widget/Button;

    .line 312
    const v0, 0x7f0f059b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->z:Landroid/widget/Button;

    .line 314
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 316
    const-string/jumbo v2, "signup_from_review"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Q:Z

    .line 317
    const-string/jumbo v2, "extra.show_skip_button"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->R:Z

    .line 321
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->U:Landroid/content/SharedPreferences;

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->U:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->V:Landroid/content/SharedPreferences$Editor;

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->U:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "coppa_lockout"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->U:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "coppa_error_message"

    const-string/jumbo v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->X:Ljava/lang/String;

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 326
    iput-boolean v8, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->W:Z

    .line 329
    :cond_1
    if-eqz p1, :cond_7

    .line 330
    const-string/jumbo v0, "show_skip_button"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->R:Z

    .line 331
    const-string/jumbo v0, "FBUID_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    .line 332
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 334
    const-string/jumbo v2, "birthdate"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    .line 335
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    aget v1, v2, v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    aget v2, v2, v8

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 336
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Ljava/util/Calendar;)Z

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/os/Bundle;)V

    .line 339
    const-string/jumbo v0, "facebookEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Ljava/lang/String;

    .line 340
    const-string/jumbo v0, "googleEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:Ljava/lang/String;

    .line 341
    const-string/jumbo v0, "googlePhoto"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Ljava/lang/String;

    .line 342
    const-string/jumbo v0, "full_form"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    .line 343
    const-string/jumbo v0, "suggestion_email_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ae:Ljava/util/ArrayList;

    .line 354
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "flags_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FlagsDialog;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Z:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->aj:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$b;)V

    .line 360
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "photo_add_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    .line 363
    if-eqz v0, :cond_4

    .line 364
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v1, p0}, Lcom/yelp/android/ui/util/ImageInputHelper;->b(Landroid/app/Activity;)Lcom/yelp/android/ui/util/ImageInputHelper$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;)V

    .line 368
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h()V

    .line 370
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    if-eqz v0, :cond_8

    .line 371
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->k()V

    .line 376
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c()Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    if-eqz v0, :cond_5

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager$a;)V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Landroid/app/Activity;)V

    .line 381
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a()V

    .line 383
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 384
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b()V

    .line 386
    :cond_6
    return-void

    .line 347
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ae:Ljava/util/ArrayList;

    .line 348
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 349
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v1, v2, v0

    .line 350
    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ae:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    :cond_8
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->l()V

    goto :goto_0

    .line 284
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
    const v4, 0x7f070437

    .line 996
    sparse-switch p1, :sswitch_data_0

    .line 1016
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 998
    :sswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ag:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/16 v3, 0x7b7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 1000
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1001
    const v1, 0x7f070317

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0705ac

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1006
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1008
    :sswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->M:[Ljava/lang/String;

    .line 1009
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1010
    const v2, 0x7f070547

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1014
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 996
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
    .line 548
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Y:Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->Y:Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$b;->cancel(Z)Z

    .line 552
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 424
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 416
    :pswitch_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SignUpCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 417
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/c;->k(Z)V

    .line 418
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->s()I

    .line 420
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->setResult(I)V

    .line 421
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->finish()V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x7f0f060d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 533
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 536
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Lcom/yelp/android/appdata/webrequests/co;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ah:Lcom/yelp/android/appdata/webrequests/co$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/appdata/webrequests/co$a;)V

    .line 537
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 539
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->j:Lcom/yelp/android/webimageview/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a()V

    .line 542
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 544
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 1022
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1024
    packed-switch p1, :pswitch_data_0

    .line 1030
    :goto_0
    return-void

    .line 1027
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SignUpGooglePrompt:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 1024
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
    .line 404
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 406
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->R:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100025

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 409
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 475
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_1

    .line 476
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 478
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Landroid/view/View;)V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 520
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 522
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->i()V

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->G:Lcom/yelp/android/appdata/webrequests/co;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ah:Lcom/yelp/android/appdata/webrequests/co$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/co$a;)V

    .line 527
    const v0, 0x7f070584

    invoke-super {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(I)V

    .line 529
    :cond_0
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d()Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 507
    const-string/jumbo v0, "birthdate"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->A:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 508
    const-string/jumbo v0, "FBUID_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 509
    const-string/jumbo v0, "facebookEmail"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v0, "googleEmail"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->K:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string/jumbo v0, "googlePhoto"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->L:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string/jumbo v0, "full_form"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->S:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 513
    const-string/jumbo v0, "show_skip_button"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->R:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    const-string/jumbo v0, "suggestion_email_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->ae:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 515
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->B:Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/os/Bundle;)V

    .line 516
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 1

    .prologue
    .line 1585
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->I:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    .line 1588
    :cond_0
    return-void
.end method
