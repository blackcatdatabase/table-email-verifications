<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\EmailVerifications\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class EmailVerificationDto {
    public function __construct(
        public readonly ?int $id,
        public readonly int $userId,
        public readonly ?string $tokenHash,
        public readonly string $selector,
        public readonly ?string $validatorHash,
        public readonly ?string $keyVersion,
        public readonly \DateTimeImmutable $expiresAt,
        public readonly \DateTimeImmutable $createdAt,
        public readonly ?\DateTimeImmutable $usedAt
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
