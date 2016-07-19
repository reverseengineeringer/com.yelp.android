.class public Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "FindReservationFragment.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Spinner;

.field private f:Ljava/util/Calendar;

.field private g:I

.field private i:Lcom/yelp/android/serializable/YelpBusiness;

.field private j:Lcom/yelp/android/ui/activities/reservations/b;

.field private final k:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

.field private final l:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 281
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$6;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->k:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    .line 293
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$7;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->l:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->g:I

    return p1
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;-><init>()V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string/jumbo v2, "business"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->k:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->l:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->e:Landroid/widget/Spinner;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/yelp/android/serializable/ReservationFilter;

    iget v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->g:I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/ReservationFilter;-><init>(ILjava/util/Date;)V

    .line 170
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/serializable/ReservationFilter;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->j:Lcom/yelp/android/ui/activities/reservations/b;

    iget v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->g:I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/reservations/b;->a(ILjava/util/Date;)V

    .line 172
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->a:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->a:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$2;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->b()V

    .line 187
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->b:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$3;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->a()V

    .line 202
    return-void
.end method

.method private i()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f0188

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->c:Landroid/widget/Button;

    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f0189

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->e:Landroid/widget/Spinner;

    .line 208
    new-array v2, v8, [Ljava/lang/String;

    move v0, v1

    .line 209
    :goto_0
    if-ge v0, v8, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f0301a4

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 216
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 217
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->e:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->e:Landroid/widget/Spinner;

    iget v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->e:Landroid/widget/Spinner;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$4;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$5;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method private j()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f070236

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->b:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->j()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->a:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->k()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 255
    return-void
.end method

.method public c()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationFind:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->c()Lcom/yelp/android/analytics/iris/ViewIri;

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
    .line 264
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 265
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v1, "provider"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->setHasOptionsMenu(Z)V

    .line 81
    check-cast p1, Lcom/yelp/android/ui/activities/reservations/b;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->j:Lcom/yelp/android/ui/activities/reservations/b;

    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "datePicker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->k:Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "timePicker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;

    .line 91
    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->l:Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;)V

    .line 94
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f:Ljava/util/Calendar;

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f:Ljava/util/Calendar;

    const-string/jumbo v1, "saved_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 102
    const-string/jumbo v0, "saved_party_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->g:I

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/yelp/android/ui/activities/reservations/c;->a()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationFilter;->d()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->g:I

    .line 106
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 152
    const v0, 0x7f10001f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 153
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 115
    const v1, 0x7f03003d

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0617

    if-ne v0, v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f()V

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string/jumbo v0, "saved_time"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    const-string/jumbo v0, "saved_party_size"

    iget v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->i:Lcom/yelp/android/serializable/YelpBusiness;

    .line 122
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->g()V

    .line 123
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->h()V

    .line 124
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->i()V

    .line 127
    const v0, 0x7f0f00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->d:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$1;-><init>(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f0f012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ReservationAttribution;

    .line 139
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->x()Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setProvider(Lcom/yelp/android/serializable/Reservation$Provider;)V

    .line 140
    return-void
.end method
