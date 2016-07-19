.class public final enum Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;
.super Ljava/lang/Enum;
.source "OnboardingMarshmallowExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cohort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

.field public static final enum illustration_os_prompt:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

.field public static final enum illustration_primer:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

.field public static final enum os_prompt_illustration:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

.field public static final enum primer_illustration:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    const-string/jumbo v1, "primer_illustration"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->primer_illustration:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    .line 25
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    const-string/jumbo v1, "illustration_primer"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->illustration_primer:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    .line 26
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    const-string/jumbo v1, "illustration_os_prompt"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->illustration_os_prompt:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    .line 27
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    const-string/jumbo v1, "os_prompt_illustration"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->os_prompt_illustration:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->primer_illustration:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->illustration_primer:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->illustration_os_prompt:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->os_prompt_illustration:Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/OnboardingMarshmallowExperiment$Cohort;

    return-object v0
.end method
